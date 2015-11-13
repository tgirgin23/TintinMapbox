// Marine

#marine_label {
  text-name: @name;
  text-face-name: @sans;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-fill: darken(#328793, 10);
  text-halo-fill: fadeout(#fff, 50%);
  text-halo-radius: 1.5;
  text-size: 10;
  text-character-spacing: 1;

  // Some marine labels should be drawn along a line 
  // rather than on a point (the default)
  [placement='line'] {
    text-placement: line;
    text-avoid-edges: true;
  }
  // Oceans
  [labelrank=1] { 
    text-size: 18;
    text-wrap-width: 120;
    text-character-spacing:	4;
    text-line-spacing:	8;
  }
  [labelrank>=1] { text-size: 14; }
  [labelrank=3] { text-size: 11; }
  [zoom>=5] {
    text-size: 12;
    [labelrank=1] { text-size: 22; }
    [labelrank=2] { text-size: 16; }
    [labelrank=3] {
      text-size: 14;
      text-character-spacing: 2;
     }
   }
    [name_en = "North Atlantic Ocean"],
    [name_en = "Sargasso Sea"][zoom >= 1]
  {
    text-name: 1;
    text-size: 1;
    text-halo-fill: fadeout(#fff, 100%);
  }
}
