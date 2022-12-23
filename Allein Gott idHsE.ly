\language "nederlands"
\header {
  filename =    "paulus_3.ly"
  opus =        "Opus 36"
  title="Allein Gott in der Höh sei Ehr"
  subtitle= \markup {{\italic Paulus}, Oratorio Op.36 nr. 3: Choral}
  composer="Felix Mendelssohn Bartholdy (1809-1847)"
  copyright="Public Domain"
  source = "Kalmus Edition"
  style = "Romantique" % Early Romantic
  copyright = "Public Domain"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiaopus = "O 36"
  mutopiainstrument = "Voice (SATB)"
  mutopiastyle = "Romantic"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"

 %footer = "Mutopia-2013/02/21-490"
 %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global =  {
   \time 4/4
   \key beses \major
   \partial 4
   \skip 1*14 \bar "|."
}

sopranoMelody =  \relative c' {
     beses8[\p( ces8)] des4 eses fes eses des ces des\fermata des des  ces8[( des)] eses4 
    ces beses( ces) beses\fermata  beses8[( ces)] des4 eses fes eses des ces des\fermata des des
     ces8[\<( des)] eses4 ces beses( ces) beses\!\fermata beses\f ces des eses des ces bes 
    ces\fermata ces des eses fes eses des\> ces des\!\fermata des\p des  ces8[( 
    des)] eses4 ces beses( ces) beses\fermata 
}

altoMelody =  \relative c' {
    beses4\p beses beses as  beses8[( ces)] beses4  as8[( ges)] fes4\fermata beses as ces ces ges beses( 
    as) beses\fermata beses beses beses  beses8[( as)]  beses[( ces)] des4 as as\fermata beses  as8[( 
    beses)] ces4\< ces  ges8[( as)] beses4( as) beses\!\fermata beses\f beses ases ges fes ases ges 
    ges\fermata  as8[( ges)] fes4 beses beses  beses8[( ces)]  ces[\>( beses)] as4 as\!\fermata 
    beses\p as ces ces ges beses( as) fes\fermata
}

tenorMelody =   {
    des8[\p( eses)] fes4 eses  eses8[( des)]  ges[( fes)] fes4 eses des\fermata ges f ges 
   ges eses des ( eses) des\fermata  des8[( eses)] fes4 eses des  ges8[( fes)]  fes[( beses)] 
    as[( ges)] f4\fermata ges f ges\< ges ges fes4.( eses8) des4\!\fermata
   beses,\f fes fes eses fes  fes8[( eses)] des4 eses\fermata fes fes eses des ges fes\>  as8[( ges)]\!
   f4\fermata ges\p f ges ges  fes8[( eses)] des4 ( eses) des\fermata
}

bassMelody =  {
   beses,4\p  beses,8[( as,)] ges,4 fes,  ges,8[( as,)] beses,4 fes, beses,\fermata ges, des  eses8[( des)] ces4 
   eses, fes,2 beses,4\fermata beses, as, ges, fes,  ges,8[( as,)] beses,4 eses des\fermata  beses,8[( ces)] des4 
    eses8[\<( des)] ces4 eses,  des,8[( eses,] fes,4) beses,\!\fermata ges,\f fes, fes, ces ases, fes, ges,
   ces\fermata fes,  beses,8[( ases,)] ges,4 fes,  ges,8[( as,)] beses,4\> eses des\!\fermata  beses,8[\p( 
   ces)] des4  eses8[( des)] ces4 eses, fes,2 beses,4\fermata
}

tekst = \lyricmode {
  Al4 -- lein Gott in der Höh sei Ehr und Dank für sei -- ne Gna -- de; 
  da -- rum dass nun und nim -- mer -- mehr uns rüh -- ren kann kein 
  Scha -- de. Ganz un -- er -- mess'n ist sei -- ne Macht, nur das 
  ge -- schieht was er be -- dacht, wohl uns, wohl uns des Her -- ren.
}

sopranoTotal = <<
	      \context Staff = "soprano" { 
                \set Staff.instrumentName = "Soprani"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		  \context Voice="soprano"<< 
				\global
				\sopranoMelody
				>>
			}
	     \new Lyrics \lyricsto "soprano" \tekst
      >>

altoTotal = <<
	      \context Staff = "alto" { 
                \set Staff.instrumentName = "Alti"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		  \context Voice="alto"<< 
				\global
				\altoMelody
				>>
			}
	     \new Lyrics \lyricsto "alto" \tekst
      >>

tenorTotal = <<
	      \context Staff = "tenor" { 
                \set Staff.instrumentName = "Tenori"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "bass"
		  \context Voice="tenor"<< 
				\global
				\tenorMelody
				>>
			}
	     \new Lyrics \lyricsto "tenor" \tekst
     >>

bassTotal = <<
	      \context Staff = "bass" { 
                \set Staff.instrumentName = "Bassi"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "bass"
		  \context Voice="bass"<< 
				\global
				\bassMelody
				>>
			}
	     \new Lyrics \lyricsto "bass" \tekst
     >>

        
\score {
     \context ChoirStaff = "choir" <<
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >>

  \layout { interscoreline = 4 }
  
  \midi {
    \tempo 4 = 40
    }


}

% EOF

