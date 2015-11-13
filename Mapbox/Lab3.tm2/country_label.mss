// Places //

#country_label[zoom>=2][zoom<9] {
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @country_label;
  text-halo-fill: white;
  text-halo-radius: 1;
  text-halo-opacity: 0.7;
  text-size: 14;
  text-transform: uppercase;
  [name_en = 'Democratic Republic of the Congo']
  {
     text-name: 'DRC';
  }
  [name_en = 'Republic of the Congo']
  {
     text-name: 'Congo';
  }
  [name_en = 'Russia']
  {
    text-name: 'RUSSIA';
    text-character-spacing: 20;
  }
  [name_en = 'United States']
  {
    text-character-spacing: 3;
    [zoom>=3]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'Canada']
  {
    text-character-spacing: 10;
    [zoom>=3]
    {
        text-character-spacing: 20;
    }
  }
  [name_en = 'Brazil']
  {
    text-character-spacing: 3;
    [zoom>=3]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'Kazakhstan']
  {
    text-character-spacing: 3;
    [zoom>=3]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'China']
  {
    text-character-spacing: 20;
    [zoom>=3]
    {
        text-character-spacing: 30;
    }
    [zoom>=4]
    {
        text-character-spacing: 20;
    }
    [zoom>=5]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'Turkey']
  {
    text-character-spacing: 20;
    [zoom>=3]
    {
        text-character-spacing: 5;
    }
    [zoom>=4]
    {
        text-character-spacing: 15;
    }
    [zoom>=5]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'India']
  {
    text-character-spacing: 5;
    [zoom>=3]
    {
        text-character-spacing: 8;
    }
    [zoom>=4]
    {
        text-character-spacing: 20;
    }
    [zoom>=5]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'Australia']
  {
    text-character-spacing: 5;
    [zoom>=3]
    {
        text-character-spacing: 8;
    }
    [zoom>=4]
    {
        text-character-spacing: 20;
    }
    [zoom>=5]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'Mongolia']
  {
    text-character-spacing: 20;
    [zoom>=3]
    {
        text-character-spacing: 8;
    }
    [zoom>=4]
    {
        text-character-spacing: 20;
    }
    [zoom>=5]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'Greenland']
  {
    text-character-spacing: 20;
    [zoom>=3]
    {
        text-character-spacing: 8;
    }
    [zoom>=4]
    {
        text-character-spacing: 20;
    }
    [zoom>=5]
    {
        text-character-spacing: 10;
    }
  }
  [name_en = 'Central African Republic']
  {
    text-name: 'CAR';

  }
  [name_en = 'The Netherlands']
  {
    text-name: 'HOLLAND'; 
  }
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 20;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 17;
  }
}