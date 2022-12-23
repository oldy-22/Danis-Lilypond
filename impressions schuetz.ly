\version "2.12.3"
\include "deutsch.ly"

\header {
  title = "Impressions"
  composer = "Michael Schütz"
  arranger = "arr. v. Dani"
  meter = "sehr besinnlich"
}

global = {
  \tempo 4=78
  \key c \major
  \time 4/4
  \partial 4
}

violin = \relative c' {
  \global
 % Melodie
e8 f g4 c g4. e8 c d e4 s \fermata e8 f g4 c,2 c4 c2 s4 
e8 f g4 c g4. e8 d e c4 s e8 f g4 c,2 c4 c2 r8 c'8 h c

%9
g2 r8 c h c a2 r8 c h c  d e f g f e d c d c h a g c h c g2
r8 c h c e,2 r8 e f g a4 g f e d2 r4 e8 f 

%17
g4 c g4. e8 c d e4 r \fermata e8 f g f e d c4 c c2 \fermata r4
e8 f g4 c g4. e8 d e c4 r e8 f g4 c,2 c4 c2 r

%25
r1 r2 r8 c' h c  d e f g f e d c h4 f'8 e d c h c g2 r8
c h c e,4. d8 c4 r f e d2 c \fermata r4 \fermata^"lang" e8 f

%33
g4 c g4. e8 c d e4 r \fermata e8 f g4 c,2 c4 ~ c8 h c d e d e f 
g4 c g4. e8 d e c4 r e8 \pp f g4 c,2 c4 c2 \fermata r4 e8 \ppp f g4 c,2 c4 c1~c \fermata \bar "|."
  
}

rightOne = \relative c' {
  \global
  s4 s1 s2 r4 s
}

rightTwo = \relative c' {
  \global
% Alt
  s4 c2 c g8 a d4 r s c s2 h4 a2 r4 s c2 c h4 h r4 s c1 ~ c2 s %10
s1 s2 s d8 e f g f e f4 ~ f8 e f e d2 ~ d r2 r4 r8 d c4 r 
<f c> <e h> <d a> <c g> <c f,>2 r %17
c2 c g8 a d4 r s c2. h4 a2 r4 s c2 c h4 h r4 s c1 ~ c2 r2 %25
r8 h c4 r2 r8 c8 d4 r2 d8 e f g f e f4 ~ f8 e d c h c h c %29
r8 h c4 r8 c h c r8 a h2 r4 <c a> <h g> <a f> <g e> f2 r4 s4 %33
c'2 c g8 a d4 r s c s2 h4 a2 r4 s c2 c h4 h r4 s c2 h a r c g ~ g as r <g e>
}

leftOne = \relative c' {
  \global
% Tenor
r4 h2 a f8 g g4 r4 r f2 e4 d g2 r h a e4 e r2 f1 e2 r
r8 h' c4 r2 r8 c8 d4 r8 c h c r4 c2 d8 c h4 d8 c h a g4 r8 h c4 r2 r8 a h2 r4 s1 s %17
h2 a f8 g g4 r4 r f2 e4 d g2 r h a e4 e r2 f1 e2 r8 c' h c %25
g2 r8 c h c a2 r8 c h c r4 c2 d8 c d c h a g4 s4 g2 s e r8 e f g  s1 d2 r %33
h'2 a f8 g g4 r4 r f2 e4 d g2 r h g e4 e r2 f2 g ~ g  r2 f1 es2 d s1
}

leftTwo = \relative c {
  \global
% Bass
r4 e2 f a,8 h c4 r4 \fermata r a2 g f \fermata r e' f gis,4 a r2 d2 g, c r %9
e r f r e a g r4 g8 f e2 r a,2. r4 r2 d g, r %17
e' f a,8 h c4 r \fermata r a2 g f \fermata r e' f gis,4 a r2 d g, c r %25
e r f r e a, g r4 g'8 f e2 r a,2. r4 r2 d g, \fermata r4 r %33
e'2 f a,8 h c4 r \fermata r a2 g f \fermata r e' f gis,4 a r2 d e f \fermata r
d g, as f r \fermata <g c c,> \fermata
  
}

%violinPart = \new Staff \with {
%  instrumentName = "Violine"
%  midiInstrument = "violin"
%} \violin

pianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } { << \violin \\ \rightTwo >> }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

\score {
  <<
    %\violinPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
