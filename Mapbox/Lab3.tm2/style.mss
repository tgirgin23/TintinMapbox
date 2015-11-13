// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'tintin Regular';
//@sans_bold: 'Tintin Majuscules   Bold';
@sans_bold: 'Tintin Majuscules   Bold';

// Common Colors //
@land: #E9DCCD;
@borders: #f4f4f4;
@water: #55B7C5;
@roads_highway: #d7652d;
@roads_main: #efa137;
@country_label: #66a;
@city_label: #444;

Map { 
  background-color: @land; 
  font-directory: url('');
}


// Political boundaries //

#admin[admin_level=2][maritime=0] {
  line-join: round;
  line-color: @borders;
  line-comp-op: color-dodge;
  line-width: 1.4;
  [zoom>=6] { line-width: 2; }
  [zoom>=8] { line-width: 4; }
  [disputed=1] { line-dasharray: 4,4; }
}



#country_label_line { line-color: fadeout(@country_label,75%); }

// Water Features //

#marine_label
{
  marker-width:0;
  marker-line-width:0;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  marker-comp-op: overlay;
    [name='North Atlantic Ocean']
    {
      [zoom>=4]
      {
        marker-file:url(img/tintin.png);
      }
      [zoom>=2]
      {
        marker-file:url(img/tintin_75percent.png);
      }

    }
}

#water {
  polygon-fill: @water;
  polygon-gamma: 0.6;
}

#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @sans_italic;
    text-fill: darken(@water, 30%);
    text-size: 13;
    text-wrap-width: 100;
    text-wrap-before: true;
  }
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}

// Roads & Railways //

#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    [class='motorway']
    {
      
    line-color: @roads_highway;
    line-width: 1;
    }
    [class='main']
    {
      text-name: @name;
      text-face-name: @sans_italic;
      line-simplify: 10;
      line-smooth: 1;
      line-color: @roads_main;
      [zoom>=7] { line-width: 0.1; }
      [zoom>=8] { line-width: 0.3; }
      [zoom>=10] { line-width: 0.6; }
      [zoom>=14] { line-width: 2; }
      [zoom>=16] { line-width: 3; }
    }
    [class='street'],
    [class='street_limited'] 
    {
      [zoom>=14] { 
          line-color: @roads_main;
          line-width: 1; 
      }
      [zoom>=16] { line-width: 1.5; }
    }
  }
}

#building [zoom>=16][zoom<=17]{
  // At zoom level 13, only large buildings are included in the
  // vector tiles. At zoom level 14+, all buildings are included.
  polygon-fill: #d5c8b5;
  opacity: 0.8;
}
// Seperate attachments are used to draw buildings with depth
// to make them more prominent at high zoom levels
#building [zoom>=18]{
::wall { polygon-fill:mix(@land, #000, 85); }
::roof {
  polygon-fill: #DB435D;
  polygon-geometry-transform:translate(-1,-1.5);
  polygon-clip:false;  
  line-width: 0.5;
  line-color: mix(@land, #000, 85);
  line-geometry-transform:translate(-1,-1.5);
  line-clip:false;
 }
}
