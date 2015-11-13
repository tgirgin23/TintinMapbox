#place_label {
  [type='city'][zoom<13][localrank=1] {
    text-name: @name;
    text-face-name: @sans_italic;
    text-halo-fill: white;
    text-halo-radius: 1.1;
    text-halo-opacity: 0.8;
    text-fill: @city_label;
    text-size: 20;
    [zoom>=5] { text-size: 24; }
    [zoom=6] { text-size: 26; }
    [zoom=7] { text-size: 22; }
    [zoom=8] { text-size: 26; }
    [zoom=9] { text-size: 28; }
    [zoom>=10] { text-size: 28; }
    [zoom>=12][zoom < 13] { text-size: 28; }
  }
  [type='town'][zoom>=8][zoom<=17][localrank<=2] {
    text-name: @name;
    text-face-name: @sans_italic;
    text-halo-fill: white;
    text-halo-radius: 1;
    text-halo-opacity: 0.5;
    text-fill: #4b4a4a;
    text-size: 16;
    [zoom = 9] { text-size: 17; }
    [zoom>=10] { text-size: 17; }
    [zoom>=12] { text-size: 18; }
  }
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood']{
    [zoom >= 12] 
    {
      text-name: @name;
      text-face-name: @sans_italic;
      text-halo-fill: white;
      text-halo-radius: 1;
      text-halo-opacity: 0.8;
      text-fill: #7e7d7d;
      text-size: 20;
      [zoom>=14] { text-size: 20; }
      [zoom>=16] { text-size: 24; }
    }
  }
}