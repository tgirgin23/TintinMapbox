// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Tintin Majuscules   Bold';

// Common Colors //
@land: #E9DCCD;
@borders: #9CA5A1;
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
  line-width: 1.4;
  [zoom>=6] { line-width: 2; }
  [zoom>=8] { line-width: 4; }
  [disputed=1] { line-dasharray: 4,4; }
}

// Places //

#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @country_label;
  text-size: 12;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 14;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 16;
  }
}

#country_label_line { line-color: fadeout(@country_label,75%); }

#place_label[localrank<=2] {
  [type='city'][zoom<=15] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-fill: @city_label;
    text-size: 16;
    [zoom>=10] { text-size: 18; }
    [zoom>=12] { text-size: 24; }
  }
  [type='town'][zoom<=17] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-halo-fill: white;
    text-halo-radius: 1;
    text-halo-opacity: 0.5;
    text-fill: #333;
    text-size: 10;
    [zoom>=10] { text-size: 10; }
    [zoom>=12] { text-size: 20; }
  }
  /*[type='village'] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-fill: #444;
    text-size: 12;
    [zoom>=12] { text-size: 14; }
    [zoom>=14] { text-size: 18; }
  }*/
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-halo-fill: white;
    text-halo-radius: 1;
    text-halo-opacity: 0.8;
    text-fill: #666;
    text-size: 12;
    [zoom>=14] { text-size: 14; }
    [zoom>=16] { text-size: 16; }
  }
}

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
        marker-file:url(img/tintin_75percent.png);
      }
      [zoom=3]
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
      [zoom>=14] { line-width: 1; }
      [zoom>=16] { line-width: 1.5; }
    }
  }
}
