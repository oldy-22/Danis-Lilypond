\version "2.18.2"
\language "deutsch"
#(set-global-staff-size 19.7)
#(set-default-paper-size "a4") % 'landscape)

global = {
  \key h \minor
  \time 4/4
  \partial 2
}

chordNamesverse = \chordmode {
  \global
  s2 h1:m a g fis2:sus fis
  h1:m a e:m fis
  e:m a d2 a h1:m

  e:m s 
  fis:sus fis2
  fis1:sus fis 
  h:m a e:m7 fis
  h a1 e:m7 fis
  
  g a h:m s
  e:m7 fis h:m fis:sus fis
  
  
}

melodyverse = \relative c' {
  \global %\bar ".|:"
  \repeat volta 2 {
  h8 \( cis d e \)  fis2 r8 h, fis' e ~ e4 d8 cis ~ cis4 
  r8 a h cis4 d e d8 ~ d cis ~ cis4 \breathe
  h8 \( cis d e \) fis2 r8 h, fis' e ~ e4 d8 cis ~ cis4 
  r8 a h cis4 d e g8 fis2
  r8 fis h h ~ h2 r8 cis d cis ~ cis4 h8 a ~ a4
  r8 g fis4 fis8 fis4 a h8 ~ h2
  r4 e,8 fis g4. fis8 ~ fis e d e ~ e  e ( fis2 )
  r8 g }
  \alternative {
    {fis4. g8 fis g ( fis ) e ( fis2 )}
    {fis4. g8 fis4 g8 fis16 ( g fis2 )}
  }
  h8 fis fis h 
  << {h2 s a s d,2 h' ais2 }
     {d,2 h8 cis d fis e2. \( d8 cis \) h4 r d h cis2 } >>

  \stemUp h'8 fis fis h 
  << {h2 s a s d,2 h' ais2 }
     {d,2 h8 cis d fis e2. d8 cis h4 cis d d cis2 } >>
   e4^\markup {Fine} r8
  
  a^\markup {Bridge} h4 h8 h ~ h4 r8
  h cis 4 d8 d ( cis4 ) r8
  cis d4 ( cis8 ) cis16 ( h ) h8 ( a ) a h ~ h2 r4
  
  a h4 h8 h ~ h4 r8
  h cis 4 d8 d ( cis4 ) r8
  cis d4 e8 fis ~ fis4 g8 fis ~ fis1 ~ fis2 s
  
  
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  Ma ry, did you know that your ba- by boy
would one day walk on wa- ter?
Ma ry, did you know that your ba- by boy
would save our sons and daugh ters?
Did you know that your ba by boy
has come to make you new?  
_ This child that you de- li- vered, will soon de- li- ver you
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Ma ry, did you know that your ba- by boy
would give sight to a blind man?
Ma ry, did you know that your ba- by boy
would calm the storm with his hand?
Did you know that your ba- by boy
has walked where an- gels trod?
When you kiss your litt- le ba- by
you 
\repeat unfold 2 { \skip 1 }
\repeat unfold 2 { \skip 1 } \skip 1
kiss the face of God

Ma ry, did you know?
Ma ry, did you know? - - - Did you know?
Ma ry, did you know?
Ma ry, did you know? Did you know? -  Oh, oh, oh. -

The blind will see, the deaf will hear
The dead will live a gain
The lame will leap, the dump will speak,
the prai ses of the lamb--.

}

verseThree = \lyricmode {
  \set stanza = "3."
  Ma ry, did you know that your ba- by boy
  is Lord of all cre a tion?
  Ma ry, did you know that your ba- by boy
  will one day rule the na tions?
  Did you know that your ba by boy was hea- ven's per fect lamb?
  _ This slee ping child you're hol ding is-the 

\repeat unfold 2 { \skip 1 }
\repeat unfold 2 { \skip 1 } \skip 1

  great - - I Am?
}

\header {
  title = "Mary did you know"
}

\score { 
  <<
    \new ChordNames \chordNamesverse
    \new Staff { \melodyverse }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"

    }
  }

  \midi {
    \tempo 4=120
  }
}
