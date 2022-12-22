% Version 191122 mit Optimierungen in den Akkorden und DC ad lib. (DC noch zu testen!!!)
% o Spielbarkeit prüfen
\version "2.18.2"
\language "deutsch"
#(set-global-staff-size 20)
#(set-default-paper-size "a4") % 'landscape)

global = {
  \key es \major
  \time 3/4
  \tempo 4 = 60
  %\partial 4
  \set Timing.beamExceptions = #'()
}

melody = \transpose c d \relative c'' {
  \global
  \numericTimeSignature \set Timing.beamExceptions = #'()
  g4 g4. as8 f d b4. b8 b' g as4. b,8 \time 4/4 as' g es f g2 \time 3/4 
  \set Timing.beamExceptions = #'()
  g4 a4. b8 c d, es4. f8 es[ d]  d c c es \time 4/4 es4 d2 r8 b \time 3/4
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  g'4 g4. as8 f d b4. b8 b' g as4. b,8 as' g es f g4 g a4. b8
  c8 d, es4. f8 es d  d c c es \time 4/4 es4 d ~ d r \bar "||" \time 3/4

  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  f f4. f8 f d e4. g8 g g16 as b4. c,8 b' g as4. as8 \time 4/4 
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  as g es4 ~ es8 f g des' \time 3/4
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  c4 b c ~ c2 r8 c,16 des es8 f f g g as as4 as r8 c
  c as as f f d d b b4 r8 b' b g g es es c c as as4 r8 as'
  as es es d d c c d d c c b \time 2/4 b4 r8 as' \time 3/4
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  as  g g g a4 \time 4/4 a4. \( b8 \) 
  \once \override ParenthesesItem #'font-size = #1
  b4 - \parenthesize \fermata
  \mark \markup \small \italic "D.C. ad lib."
  r8 b, \bar "||" \time 3/4 
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  b' g g es es d d4 d r8 es
  b' ges ges es es d  \time 4/4 d4. es16 f f4 r8 es \time 3/4 es f16 g 
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  as8 g g f \time 4/4
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  f g g f f4. g8 \time 3/4 
  \set Timing.beamExceptions = #'() % nach jedem Taktwechsel wieder
  g f f as as g d \( es \) es2 ~ es2. \bar "|."
}

eins = \transpose c d \relative c' {
  \global
  \numericTimeSignature
  b4 b2 es4 es2 es4 es d es2 es
  es8 f es d c b c4 b b8 c c4 b b8 c b1
  << {g'4 g4. as8} \\ {es4 d es} >> f8 d es2 es4 es d es c8 d es f g4 a4. b8
  c d, es2 b4 b a8 b a4 b ~ b2
  f'4 f4. f8 f d e4. g8 g4 g8 g16 as b4 b8 g as4. as8 as g des'4 ~ des f
  <es as,> <des g,> <c as> ~ <c as>2 r4 es,8 f << {f g g as as4 as2} \\ {des,8 c es f des es es2} >>
  r8 as' as f f d d b b d d b r g' g es es c c as as2
  as'8 es es d d c c d d c c b b2
  <as f>4 <g es> <a f> a2 
  \once \override ParenthesesItem #'font-size = #1
  <b d,> - \parenthesize \fermata
  g8 b b es es d f, as as f f es
  ges b b es es d < d b>2 ( <b f> ) <g es>4 <as es> <<{g8 f} \\ {es 8 d}>>
  <f as,>8 <g b,> <g b,> <f as,> ~ <f as,>2 <c' as>4 <c f,> <b f> <d, b> b2 ~ b2.
}

zwei = \transpose c d \relative c' {
  \global \clef alto
  \numericTimeSignature
  g4 g2 c8 h b2 b4 as f c' b8 as g2 g4 a4. b8
  f2.f4 g g8 a ges4 f4 ~ f2
  b4 es c c8 h b2 b4 as as c8 b as b b4 es8 f es d c b
  c4 b8 a b c f,4 g f ges f4 ~ f2
  d'4 c8 d16 c b4
  b b8 b16 c des4 b8 b16 c b4. c8 des4 c as des des8 es f as g4
  es es es ~ es2 r4 as, as8 c as c des b c2
  as8 b as b as b as b as b b as es' g es g es g c, es c es es c
  f g g f f es es f f es f4 f2
  b,4 b c es d8 c 
  \once \override ParenthesesItem #'font-size = #1
  b4 - \parenthesize \fermata as
  g8 b g es g f as c c as as ges
  es' ges  ges b a b f2 ( es ) b4 c b 
  c1 <es c>4 es d as g2 ~ g2.
}

bass = \transpose c d \relative c {
  \global \clef bass
  \numericTimeSignature
  << { es2 d8 b } \\ { es,2. } >> as4 g2 g4 f b, b c8 d es4 d'
  c c b a f g8 a b4 es, f b,1
  es2. as4 g2 c,4 f b es,2 es'8 d  <c c,>4 c b a f g8 a b4 es, f b,1 
  b'4 as g g2 ~ g8 f e2. c4 f f8 f b4 r8 b' as c b des,
  c4 g as ~ as2 r4 c des8. c16 b4 as as2 
  f'2. ~ f2. g8 b g b g b as2.
  f2. ~ f b2
  es,4 es f 
  \once \override ParenthesesItem #'font-size = #1
  b,1 - \parenthesize \fermata b4 b b b b b 
  b b b b2 h es4 c' b
  as,1 as4 b b es,2. ~ es
}

\header {
  title = "You only cross my mind in winter - by Sting (Bach)"
}

\score { 
  <<
    \new Staff { \set Staff.instrumentName = "Mel F1/V1" \melody } 
    \new Staff { \set Staff.instrumentName = "F2/V2" \eins } 
    \new Staff { \set Staff.instrumentName = "Va" \zwei } 
    \new Staff { \set Staff.instrumentName = "Baß" \bass } 
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"

    }
  }

  \midi {
    \tempo 4=60
  }
}

