require 'sinatra'

years = {
  1953 => { birthday: "born",artist_and_title: "David Whitfield - Answer Me", youtube_id: "lhr94uOdElU"},
  1954 => { birthday: "1st", artist_and_title: "Vera Lynn - My Son My Son", youtube_id: "8BTeKk36-Ys"},
  1955 => { birthday: "2nd", artist_and_title: "Jimmy Young - The Man From Laramie", youtube_id: "e-emr0KZPxI"},
  1956 => { birthday: "3rd", artist_and_title: "Frankie Laine - A Woman In Love", youtube_id: "hBHUaH8rILA"},
  1957 => { birthday: "4th", artist_and_title: "The Crickets - That'll Be The Day", youtube_id: "RU769ErbfxU"},
  1958 => { birthday: "5th", artist_and_title: "Tommy Edwards - It's All In The Game", youtube_id: "Gtizr2G_7Bk"},
  1959 => { birthday: "6th", artist_and_title: "Cliff Richard & The Shadows - Travellin' Light", youtube_id: "IgHo3oZ2BR4"},
  1960 => { birthday: "7th", artist_and_title: "Elvis Presley - It's Now Or Never (O Sole Mio)", youtube_id: "xF15QPRRCII"},
  1961 => { birthday: "8th", artist_and_title: "Helen Shapiro - Walkin' Back To Happiness", youtube_id: "NuQlpFnlIBE"},
  1962 => { birthday: "9th", artist_and_title: "Frank Ifield - Lovesick Blues", youtube_id: "O9NIJ9yQS5E"},
  1963 => { birthday: "10th", artist_and_title: "Gerry & The Pacemakers - You'll Never Walk Alone", youtube_id: "ctbNzW9gc_A"},
  1964 => { birthday: "11th", artist_and_title: "Sandie Shaw - (There's) Always Something There To Remind Me", youtube_id: "Xx5otxLS3qc"},
  1965 => { birthday: "12th", artist_and_title: "The Rolling Stones - Get Off My Cloud", youtube_id: "J8Mu0M-bN3E"},
  1966 => { birthday: "13th", artist_and_title: "The Four Tops - Reach Out I'll Be There", youtube_id: "2EaflX0MWRo"},
  1967 => { birthday: "14th", artist_and_title: "The Bee Gees - Massachusetts", youtube_id: "Mc5oqjFsT5g"},
  1968 => { birthday: "15th", artist_and_title: "Joe Cocker - With A Little Help From My Friends", youtube_id: "POaaw_x7gvQ"},
  1969 => { birthday: "16th", artist_and_title: "The Archies - Sugar Sugar", youtube_id: "h9nE2spOw_o"},
  1970 => { birthday: "17th", artist_and_title: "Matthew's Southern Comfort - Woodstock", youtube_id: "qIHfuihoz70"},
  1971 => { birthday: "18th", artist_and_title: "Rod Stewart - Maggie May", youtube_id: "7T5hYlUsQ0s"},
  1972 => { birthday: "19th", artist_and_title: "Lieutenant Pigeon - Mouldy Old Dough", youtube_id: "aO5GWJJP3FM"},
  1973 => { birthday: "20th", artist_and_title: "David Cassidy - Daydreamer / The Puppy Song", youtube_id: "zIy1rOb8EYU"},
  1974 => { birthday: "21st", artist_and_title: "Ken Boothe - Everything I Own", youtube_id: "z5nzZy2LFE0"},
  1975 => { birthday: "22nd", artist_and_title: "David Bowie - Space Oddity", youtube_id: "cYMCLz5PQVw"},
  1976 => { birthday: "23rd", artist_and_title: "Pussycat - Mississippi", youtube_id: "jZEPIpTpoPs"},
  1977 => { birthday: "24th", artist_and_title: "Abba - Name Of The Game", youtube_id: "iJ90ZqH0PWI"},
  1978 => { birthday: "25th", artist_and_title: "John Travolta & Olivia Newton John - Summer Nights", youtube_id: "vejogCcyRRw"},
  1979 => { birthday: "26th", artist_and_title: "Lena Martell - One Day At A Time", youtube_id: "wVHRfxsf4Gc"},
  1980 => { birthday: "27th", artist_and_title: "Barbra Streisand - Woman In Love", youtube_id: "yhoie_4UQk0"},
  1981 => { birthday: "28th", artist_and_title: "Dave Stewart & Barbara Gaskin - It's My Party", youtube_id: "fC3g0JmKceU"},
  1982 => { birthday: "29th", artist_and_title: "Culture Club - Do You Really Want To Hurt Me", youtube_id: "2nXGPZaTKik"},
  1983 => { birthday: "30th", artist_and_title: "Billy Joel - Uptown Girl", youtube_id: "hCuMWrfXG4E"},
  1984 => { birthday: "31st", artist_and_title: "Chaka Khan - I Feel For You", youtube_id: "hX9E44mClKs"},
  1985 => { birthday: "32nd", artist_and_title: "Jennifer Rush - The Power Of Love", youtube_id: "5boRQcTvnwU"},
  1986 => { birthday: "33rd", artist_and_title: "Berlin - Take My Breath Away", youtube_id: "Bx51eegLTY8"},
  1987 => { birthday: "34th", artist_and_title: "The Bee Gees - You Win Again", youtube_id: "KZY9oYSSjFI"},
  1988 => { birthday: "35th", artist_and_title: "Enya - Orinoco Flow", youtube_id: "6G8d0xN-cOk"},
  1989 => { birthday: "36th", artist_and_title: "Lisa Stansfield - All Around The World", youtube_id: "JVuuatjHGnY"},
  1990 => { birthday: "37th", artist_and_title: "The Righteous Brothers - Unchained Melody", youtube_id: "zrK5u5W8afc"},
  1991 => { birthday: "38th", artist_and_title: "Vic Reeves & The Wonder Stuff - Dizzy", youtube_id: "DOlG92rb2Zg"},
  1992 => { birthday: "39th", artist_and_title: "Boyz II Men - End Of The Road", youtube_id: "zDKO6XYXioc"},
  1993 => { birthday: "40th", artist_and_title: "Meat Loaf - I'd Do Anything For Love (But I Won't Do That)", youtube_id: "9X_ViIPA-Gc"},
  1994 => { birthday: "41st", artist_and_title: "Pato Banton - Baby Come Back", youtube_id: "pSywtiAirKE"},
  1995 => { birthday: "42nd", artist_and_title: "Robson & Jerome - I Believe / Up On The Roof", youtube_id: "b74A7BP6Rvo"},
  1996 => { birthday: "43rd", artist_and_title: "Robson & Jerome - What Becomes Of The Broken Hearted / Saturday Night At The Movies / You'll Never Walk Alone", youtube_id: "NAcGUpQJsjQ"},
  1997 => { birthday: "44th", artist_and_title: "Aqua - Barbie Girl", youtube_id: "ZyhrYis509A"},
  1998 => { birthday: "45th", artist_and_title: "Cher - Believe", youtube_id: "4p0chD8U8fA"},
  1999 => { birthday: "46th", artist_and_title: "Five - Keep On Movin'", youtube_id: "FbWJVult-9M"},
  2000 => { birthday: "47th", artist_and_title: "Westlife - My Love", youtube_id: "ulOb9gIGGd0"},
  2001 => { birthday: "48th", artist_and_title: "Afroman - Because I Got High", youtube_id: "WeYsTmIzjkw"},
  2002 => { birthday: "49th", artist_and_title: "DJ Sammy & Yanou featuring Do - Heaven", youtube_id: "rogM1w6lfBM"},
  2003 => { birthday: "50th", artist_and_title: "Fatman Scoop / Crooklyn Clan - Be Faithful", youtube_id: "7_UPuhROOFg"},
  2004 => { birthday: "51st", artist_and_title: "Ja Rule featuring R Kelly & Ashanti - Wonderful", youtube_id: "QVXE1EzMrfw"},
  2005 => { birthday: "52nd", artist_and_title: "Westlife - You Raise Me Up", youtube_id: "9bxc9hbwkkw"},
  2006 => { birthday: "53rd", artist_and_title: "Fedde Le Grand - Put Your Hands Up For Detroit", youtube_id: "jkRDcu-QXyk"},
  2007 => { birthday: "54th", artist_and_title: "Leona Lewis - Bleeding Love", youtube_id: "7_weSk0BonM"},
  2008 => { birthday: "55th", artist_and_title: "X Factor Finalists - Hero", youtube_id: "dHsCGoZst-w"},
  2009 => { birthday: "56th", artist_and_title: "Cheryl Cole - Fight For This Love", youtube_id: "4umc87T5UMs"},
  2010 => { birthday: "57th", artist_and_title: "Cheryl Cole - Promise This", youtube_id: "8F1q0Vn4u4g"},
  2011 => { birthday: "58th", artist_and_title: "Professor Green featuring Emeli Sandé - Read All About It", youtube_id: "-_oLfC5Z_Ys"},
  2012 => { birthday: "59th", artist_and_title: "Beneath Your Beautiful - Labrinth featuring Emeli Sandé", youtube_id: "bqIxCtEveG8"},
  2013 => { birthday: "60th", artist_and_title: "Lorde - Royals", youtube_id: "LFasFq4GJYM"},
  2014 => { birthday: "61st", artist_and_title: "Meghan Trainor - All About That Bass", youtube_id: "7PCkvCPvDXk"},
  2015 => { birthday: "62nd", artist_and_title: "Adele - Hello", youtube_id: "YQHsXMglC9A"}
}

get '/' do
  @years = years
  @year = '1953'
  @info = years[1953]
  erb :birthday_song
end

get '/:year' do
  @years = years
  @year = params['year']
  @info = years[params['year'].to_i]
  erb :birthday_song
end
