\header {
	title = "Herbei oh ihr Gläub'gen"
	composer = "1: J.F. Wade (1711-1786) - 2: arr. by dani"
}
\version "2.20.0"
\include "deutsch.ly"
#(set-global-staff-size 22)

Soprano = \relative c'' { 
  \time 4/4 
  \partial 4  
  { \key g \major 
    g4 g2 d4 g a2 d, h'4 a h c h2 a4 
    g g2 fis4 e fis g a h fis2 e4. d8 d1 
    d'2 c4 h c2 h a4 h g a fis4. e8 d4 
    g g fis g a g2 d4 h' h a h c h2 a4 
    h c h a g fis2 g4 c h2 a4. g8 g2.  \bar "|." 

    g4 g2 d8 e fis g a2 d, h'4 a h c h2 a4 
    g g2 fis4 e fis g a h fis2 e4. d8 d1 
    d'2 c4 h c2 h a4 h g a fis4. e8 d4 
    r4 r1 r2. h'4 h a h c h2 a4 
    h c h a g fis2 g4 c h2 a4. g8 g2. \bar "|." 
  }
}
Alto = \relative c' { { 
  \key g \major 
  d4 d2 d4 d d2 d d4 d d e d2 d4 h 
  h cis d cis d2 d4 d d2 cis4. d8 d1 d2 e8 fis g4 
  g fis g2 d4 d e e d2 d4 h h a h c h2 g4 
  d' d d d d d2 d4 g e8 fis g4 d d8 cis d2 d4 
  e d2 d4. h8 h2.  \bar "|." 
  
  d4 d2 d4 d fis2 c d4 d d e d2 d4 h cis2 d4 cis d d fis g d2 cis a1
  e'2 dis4 e e2 fis e e d2. g4 g fis g a g2 d4 g g fis g fis g2 fis4
  e4 e fis e e d2 d4 fis g2 d4 c h2.
} }

Tenor = \relative c' { { 
  \key g \major 
  h4 h2 h4 h a2 a g4 a g g g2 fis4 g g2 a4 a a g fis e a2 g4. 
  fis8 fis1 h2 c4 d c2 d a4 g h c a4. g8 fis4 r r1 r2. g4 
  g fis g a g2 fis4 d' c d a a a2 g4 g g2 fis4. g8 g2.  \bar "|." 
  
  h4 h2 h4 h d2 a g4 a g a g2 a4 g a2 a a4 h d d a2 g fis h4 c
  h2 a4 gis! c2 h a a a a4 h h a h c h2 g4
  d'4 d2 d d d4 h c! es c a a2 h4 d d2 c4 fis, d2.
  } 
}

Bass = \relative c' { { 
  \key g \major g4 g2 h4 g fis2 fis g4 fis g c, d2 d4 
  e e2 d4 a d h fis g a2 a4. d8 d1 
  h'2 a4 g a2 g fis4 g e a, d2 d4 r r1 r2. 
  g4 g fis g a g2 fis4 g a g fis e d c h c d2 d4. g,8 g2.  \bar "|." 

  g'4 g2 d4 g d e fis d g fis g c, d e fis e cis a h cis d e fis g
  a2 a, d4 fis g a 
  gis2 fis!4 e a2 dis, c cis d fis4 r r1 r2.
  g4 g fis g a, h c d gis, a h c cis d4 c! h a h c d2 g,2.
  \bar "|."
} }


  \score {
    \context GrandStaff <<
      \context Staff = upper <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        {   #(set-accidental-style 'modern-cautionary) \transpose c b, 
            \Soprano }
        { \transpose c b, 
          \Alto}
      >>  
      \context Staff = lower <<
        \set Staff.printPartCombineTexts = ##f
        \clef bass
        \partcombine	{  #(set-accidental-style 'modern-cautionary) \transpose c b, 
                        \Tenor }
        { \transpose c b, 
          \Bass }
      >>  
    >>
%\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 55 4 ) } }
\midi { \tempo 4=120 }

\layout {
%  between-system-space = 1\mm
  \context {
    \Score
    % defaults
    % (shortest-duration-space . 2.0)
    % (spacing-increment . 1.2)
    % (base-shortest-duration . ,(ly:make-moment 1 8))
    % tighter spacing
%    \override SpacingSpanner #'shortest-duration-space = #2.8
%    \override SpacingSpanner #'spacing-increment = #0.6
%    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
    \remove "Bar_number_engraver"
  }
  \context { \Staff 
%    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
  }
  }
}
\paper {  % first-page-number = 2
  %print-first-page-number = ##t 
}
% -- ABC Source file follows --
%X:1
%T:Adeste Fideles
%M:4/4
%L:1/4
%C:John Francis Wade (1711-1786), circa 1743
%Q:1/4=55
%F:adeste_fideles.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Partial=4 Title=O Come, All Ye Faithful
%V:1
%G2G4D2G2A4D4B2A2B2c2B4A2G2G4F2E2F2G2A2B2F4E3D1D8d4c2B2c4B4A2B2G2A2F3E1D2B2B2A2B2c2B4A2B2B2A2B2c2B4A2B2c2B2A2G2F4G2c2B4A3G1G6
%V:2
%D2D4D2D2D4D4D2D2D2E2D4D2B,2B,2^C2D2^C2D4D2D2D4^C3D1D8D4E1F1G2G2F2G4D2D2E2E2D4D2B2B2A2B2c2B4A2D2D2D2D2D2D4D2G2E1F1G2D2D1^C1D4D2E2D4D3B,1B,6
%V:3
%B,2B,4B,2B,2A,4A,4G,2A,2G,2G,2G,4F,2G,2G,4A,2A,2A,2G,2F,2E,2A,4G,3F,1F,8B,4=C2D2C4D4A,2G,2B,2C2A,3G,1F,2z2z8z6G,2G,2F,2G,2A,2G,4F,2D2C2D2A,2A,2A,4G,2G,2G,4F,3G,1G,6
%V:4
%G,2G,4B,2G,2F,4F,4G,2F,2G,2C,2D,4D,2E,2E,4D,2A,,2D,2B,,2F,,2G,,2A,,4A,,3D,1D,8B,4A,2G,2A,4G,4F,2G,2E,2C,2D,4D,2z2z8z6G,2G,2F,2G,2A,2G,4F,2G,2A,2G,2F,2E,2D,2C,2B,,2C,2D,4D,3G,,1G,,6
%G,2G,4B,2G,2F,4F,4G,2F,2G,2C,2D,4D,2E,2E,4D,2A,,2D,2B,,2F,,2G,,2A,,4A,,3D,1D,8B,4A,2G,2A,4G,4F,2G,2E,2C,2D,4D,2z2z8z6G,2G,2F,2G,2A,2G,4F,2G,2A,2G,2F,2E,2D,2C,2B,,2C,2D,4D,3G,,1G,,6
