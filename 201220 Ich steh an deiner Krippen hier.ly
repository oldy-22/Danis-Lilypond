\version "2.20.0"
\include "deutsch.ly"
#(set-global-staff-size 22)
#(set-default-paper-size "a4" )% 'landscape)
% )%

\header {
  title = "Ich steh an deiner Krippen hier"
  composer = "J.S. Bach"
}

global = {
  \tempo 4=65
  \key g \major
  \time 4/4
  \partial 4
  \set Timing.beamExceptions = #'()
  
}

rightOne = \relative c'' {
  \global
  % Melodie
  \repeat volta 2 { g4^"(cresc bis Wiederholstrich Spannung in 1. Zeile aufbauen)" g8 a h4 a g a a h \fermata g8 a h4 c d c8 h a ( g a4 ) g \fermata }
  \break h h a g fis g8 a h4 a \fermata a \p g fis g d \break g a h \fermata
  g8 \f a h4 c d c8 h a ( g a4 ) g \fermata \bar "|."
  
}

rightTwo = \relative c' {
  \global
  % Alt
  \repeat volta 2 { d4_"Wiederholung im p" \f e8 fis g4 g8 fis g4 g fis g e8 fis g h4 a16 g fis4 g g ( fis ) d }
  g \f g4. fis8 fis e e dis e4 d! d d d8 c d4 d8 c h4 h e dis
  h e e d!8 ( e16 fis ) g4 g ( fis ) d
}

leftOne = \relative c' {
  \global
  % Tenor
  \repeat volta 2 { h4 h e e8 d d4 e8 c a d d4 e d g,8 a h c d4 d ( c8 h ) h4 }
  d d d8 c h c fis, h h a a g fis4 fis g8 a h c h a g4
  g fis8 e fis4 
  e8 fis g4. a8 h c d4 d ( c8 h ) h4
}

leftTwo = \relative c' {
  \global
  % Bass
  \repeat volta 2 { g8 fis e4. d8 c4. h8 c a d4 g, \fermata c g'8 fis e4 h'8 a g4 d' d, g \fermata }
  g8 a h c d4 g,8 a h4 e,8 fis g4 d \fermata d'8 \p c h4. a8 g4. fis8 e d c4 h \fermata
  e e8 d! c4 h8 a g4 d'2 g,4 \fermata
}

  posChoir =
<<
  \new ChoirStaff = "right" \with { 
    midiInstrument = "acoustic grand"
  } {  \transpose c b, << \rightOne \\ \rightTwo >> }
  \new ChoirStaff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \transpose c b, << \leftOne \\ \leftTwo >> }
>>

\score {
  <<
    \posChoir
  >>
  \layout { }
  \midi { \tempo 4=75 }
}
