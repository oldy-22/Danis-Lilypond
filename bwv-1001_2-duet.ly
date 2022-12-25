\version "2.11.45"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Sonata I BWV 1001"
        subtitle = "\"gesetzt für Flöte & Violine\""
        piece = "2. Fuga"
        mutopiatitle = "BWV 1001 Fuga"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1001"
        date = "1720"
        mutopiainstrument = "Violine"
        %style = "Baroque"
        %source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        %copyright = "Creative Commons Attribution-ShareAlike 3.0"
        %maintainer = "Hajo Dezelski"
        %maintainerEmail = "dl1sdz (at) gmail.com"
	
 %footer = "Mutopia-2008/06/02-1438"
 %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative f' {
	 r8^\markup { Allegro } d'8 [ d  d ] d [ c16 bes ] c8 [ a ] | % 1
	 bes4 es a, d | % 2
	r8 g8 [ g  g ] g [ f16 es ] f8 [ d ] | % 3
	es4 r4 r8 d8 [ d d ] | % 4
	d8 [ c16 bes ] c8 [ a ] bes4 bes'4 | % 5
	bes8 [ a16 g ] a [ (fis) g8 ] fis!16 [ es d c ] bes [ g' a, g ] | % 6 
	r16 a [ cis e ] 
	f [ a d, c ] b [ d f aes ] g [ f es d ] | % 7
	es16 [ g, c d ] es! [ g c, bes ] a [ c es! g ] f [ es! d c ] | % 8
	d16 [ a bes fis ] g [ bes d f, ] e! [ g bes d ] c [ a bes g ] | % 9
	fis16 [ a c es ] d [ c bes a ] bes [ g d' f, ] es [ d' g c, ] | % 10
 	fis8 r8 bes8 [ bes ] bes [ a16 g ] a8 [ a ] | % 11
	aes16 [ g ( aes fis )] g8 [ f ] es [ d ] c [ bes ] | % 12
	aes16 [ (fis) fis (g) ] g4  r16 g c es] r4 | % 13
	r8 d' [ d d ] d [ c16 bes! ] c8 [ a ] | % 14
	bes4 es a, d4 ~ | % 15
	d8 c[  c  c ] c [ bes16 a ] bes8 [ g ] | % 16
	a4 d g, c4 ~ | % 17
	c8 bes [ bes bes ] bes [ a16 g ] a8 [ bes16 a ] | % 18
	g4  c c8 [ bes16 a ] bes8 [ c16 bes ] | % 19
	a4 d d c | % 20
	d,4 bes' a8 [ f g a ] | % 21
	bes8 [ a ] g4 g8 [ f16 e ] f8 [ f ] | % 22
	f8 [ e16 d ] e8 [ cis ] d4 r8 d8 | % 23
	d4 cis8. \trill [ d16 ] d4 4 | % 24
	e,4.  fis8 g  g [ g g ] | % 25
	g8 [ f16 es ] f8 [ d ] es! c'8 [ c c ] | % 26
	c8 [ bes16 a ] bes8 [ c16 bes ] a4 d | % 27
	d8 [ e16 (f) ] e [ (d) cis (d) ] cis!8  a' [ a  a ] | % 28
	a8 [ g16 f ] g8 [ g ] g [ f16 e ] f8 [ f ] | % 29
	bes8 [ (a) ] a [ (gis) ] gis [ (a) ] a [ (fis) ] | % 30
	fis8 [ (g) ] g [ (e )] e [ (f) ] f [ (d) ] | % 31
	d8 [ (es) ] es [ (cis) ] cis [ bes'16 (gis) ] a8 [ cis,! ] | % 32
	d8 [ bes'16 (gis) ] a8 [ cis ] d [ (c) ] c [ (bes) ] | % 33
	bes8 [ (a) ] a [ (cis) ] cis [ (d) ] d [ (g,) ] | % 34
	g8. [ a16 ] f8 [ e ] d2 | % 35
	cis2 a'8 [ g a f ] | % 36
	g2 g8 [ f g e ] | % 37
	f8 [ e f g ] a [ bes a g ] | % 38
	f8 [ e f g ] a [ g a b ] | % 39
	cis8 [ b cis d ] e [ f e d ] | % 40
	cis8 [ b cis d ] e [ d e cis! ] | % 41
	\stemNeutral r16 d, [ f a ] d [ a f d ] r d' [ c bes ] c [ a fis d ] | % 42
	r16 g, [ bes d ] g [ d bes g ] r g' [ f es ] f [ d b g ] | % 43
	r16 c [ es g ] c [ g es! c ] r c' [ bes a ] bes [ g e c ] | % 44
	r16 c [ f g ] aes [ f d bes ] r bes [ es f ] g [ es c a ] | % 45
	f'16 [ d b g ] es' [ c aes f ] des' [ bes g es ] c' [aes! f d ] | % 46
	r16 d [ f b ] d [ b f d ] r d [ f b! ] d [ b f d ] | % 47
	r16 c [ es g ] c [ g es c ] r c [ es! g ] c [ g es c ] | % 48
	r16 c [ es g ] c [ g es c ] r c [ es! g ] c [ g es c ] | % 49
	r16 d [ fis a ] c [ a fis d ] r d [ fis! a ] c [ a fis d ] | % 50
	r16 c [ es g ] c [ es (des) b ] (c) [ bes' (aes) fis ] (g) [ f (e f) ] | % 51
	f8 r8  c'8 r8 c8 r8 b8 [ d ]  | % 52
	r4 r8 g,8 g [ f16 es ] f8 [ d ] | % 53
	es8 [ d16 c ] des8 [ b ] c8. [ d16 ] b!8.\trill [ c16 ] | % 54
	c8 r8 r4 d,4. e8  | % 55
	f r a4 bes c | % 56
	r8 f8 [ f f ] f [ es16 d ] es8 [ c16 d32 es ] | % 57
	d8 bes' [ bes bes ] bes [ a16 g ] a8 [b]| % 58
	c8 c [ c c ] c [ bes!16 a ] bes8 [ c16 (g)] | % 59
	a8 [ bes16 (f) ] g8 [ a16 (g)] f8 [ g16 d ] es [ c a f ] | % 60
	r8 d'8 [ d d ] d [ es16 d ] c8 [ bes ] | % 61
	a8 f'8 [ f f ] f [ g16 f ] es8 [ d ] | % 62
	g8 [ a16 (bes)] bes [ ( a g f )] bes8 [ f ] es16 [( d c bes )] | % 63
	r16  d [ c d ] bes [ (d) a (d) ] g, [ (d') f, (d') ] es, [ (d') d, (d') ]  | % 64
	r16 d [ ( g f) ] es [ d c bes ] a [ (c) g (c) ] fis, [ (c') e, (c') ] | % 65
	r16 c  [ ( a') c, ] bes [ a bes g ] a8-. [ f'16 aes, ] g [ f g es ] | % 66
	f8-. [ d'16 f, ] es [ d es c ] d8-. [ bes'16 d, ] es! [ c c' e, ] | % 67
	fis16 [ d a' fis ] c' [ a es' c ] fis [ c a' (fis] es [ c a fis!) ] | % 68
	r16 c'  [ ( fis) c ] fis [ c a' c,]  r c [ ( fis!) c ] fis [ c a' c, ] | % 69
	r16 bes [ ( d) bes ] d [ bes g' bes, ] r bes [ ( d) bes ] d [ bes g' bes, ]  | % 70
	r16 a [ ( fis') d ] fis [ d c' d, ] r d [ ( fis!) d ] fis [ d c' d, ] | % 71
	r16 d [ ( g) d ] g [ d bes' d,] r d [ ( g) d ] g [ d bes' d, ] | % 72
	r16 cis [ ( e) cis ] e [ cis bes' cis,] r cis! [ ( e) cis ] e [ cis bes' g ]  | % 73
	g16 [ (fis) e (d) ] d'8 [ d ] d [ c16 bes ] c8 [ c ] | % 74
	c8 [ bes16 a ] bes8 [ bes ] bes [ (a) ] a [ (g) ] | % 75
	fis8 [ (g) ] g [ (e) ] e [ (f) ] f [ (d) ] | % 76
	d8 [ es16 (d) ] es [ g bes d, ] cis [ e a cis, ] d [ f a c, ] | % 77
	b16 [ aes' (g f) ] g [ d es b! ] c [ aes'! (g f) ] g [ d es c ] | % 78
	fis,16 [ a c es ] (d [ c) a' c, ] (d [ es!) a, (bes ] c )[ fis,! g a ] | % 79
	r8 d8 [ d d ] d [ c16 b16 ] c8 [ a' ] | % 80
	c,8 [ c16 bes! ] c8 [ a' ] bes, [ bes16 a ] bes8 [ g' ] | % 81
	bes8. [ a16 ] g [ fis g a ] fis8 g [ g g ] | % 82
	g8 r8  fis8 r8  f8 r8  es8 r8 | % 83
	es8 r8 d8 [ bes' ] g [ aes16 g ] aes [ fis g8 ] | % 84
	fis8 r8 r8 fis8 g [ a ] bes [ fis ] | % 85
	fis8 [ g ] g [ g ] g8. [ a16 ] fis!8. \trill [ g16 ]  | % 86
	\stemNeutral r16 g,16 [ bes d ] g [ d bes g ] r g' [ f es ] f [ d b g ] | % 87
	r16 g [ c d ] es [ c aes g ] r16 es' [ d c ] d [ bes g f ] | % 88
	r16 es [ g b ] c [ es aes, g] r4 c16 [ es! fis a ]  | % 89
	r4 d,16 [ fis g bes ] r4 es,16 [ g a c ]  | % 90
	r16 c [ bes ] r8 bes16 [ a ] r8 a16 [ g ]  r8 g16 [ f ] r16 | % 91
	r f16 [ es ] r8 es16 [ d ] r8 d16 [ (c b ]  c ) r16 r8 | % 92
  % Set beam sub-group length to an eighth note
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 16)
  \set beatStructure = #'(2 2 2 2)
  \autoBeamOn

	fis4. ~  fis64 [ g ( a fis g a c, d ] \stemDown es c d es a, bes c a bes c fis, g a fis g a ) r8 \stemUp g'8 | % 93
  \set baseMoment = #(ly:make-moment 1 8)
	g16 ~ [ g32 a ( g fis g64 e fis32)] fis!8. \trill [ g16 ] g2 \bar "|." % 94
	
}

 melodyTwo =  \relative d'' { r1 r
	 d4 c bes a | % 3
	 g8 [ g, ] c16-1 [ bes' (a bes32 c) ] fis,4-1 g | % 4
	 e4 fis g8 [ f16 es ] d'8 s8 | % 5
	 c2 c4 r  | % 6
	 d,8 a d4 g, b | % 7
	 c g f' a, | % 8
	 bes es g,4. c8 | % 9
	 d4 fis g2  | % 10
	 d'8 [d,] d' [ d ] c8 r8 c8 [ c ] | % 11
	 bes8 r8  bes8 [ b ] g16 [ (f) f (es) ] es [ (d) d (c) ] | % 12
	 c4 s16 bes [ a g ] a4 d16 [ g a fis ] | % 13
	 g8 s8 s2. | % 14
	 \stemDown r8 g'8-4 [ g g ] g [ f16 es ] f8 [ d ] | % 15
	 es8 [ es16 d ] es8 [ f16 es ] d4 g | % 16
	 g8 f [ f f ] f [ es16 d ] es8 [ c-2 ] | % 17
	 d8 [ d16 c ] d8 [ es16 d ] c4 f | % 18
	 f8 [ es16 d ] es8 [ f16 es ] d4 g | % 19
	 g8 [ f16 e ] f8 [ g16 f ] \stemUp e8 s e s | % 20
	 f s cis s8 s2 | % 21
	 \stemUp d8 [ d ] d [ cis16 b ] cis4 d8 [ a ] | % 22
	 bes4  s8 a8 a [ g16 f ] g8 [ e ] | % 23
	 f16 [ e d e ] e8. [ d16 ] d8-0 d-4 [ d d ] | % 24
	 s1 | % 25
	 s2. e!4 | % 26
	 fis4 g g8 [ f16 e ] f8 [ g16 f ] | % 27
	 e4 s e d'-2 | % 28
	 d4 s8 d8 cis4 s8 d8 | % 29 
	 d4 d d cis | % 30
	 c b bes a | % 31
	 a g g s8 g8 | % 32
	 f4 s8 g'-4 f8 s8 fis8 s8 | % 33
	 \stemDown g8 [ (f) ] f [ (e) ] e [ (f) ] f [ (cis) ] | % 34
	 cis8 [ (a) ] d-2 [<d g,> ] a [ g a f ] | % 35
	 g8 [ f g e ] f [ e f d ] | % 36
	 \stemUp d'8 [ cis  d  b ] cis2 | % 37
	 d8 [ cis d e ] f [ g f e ] | % 38
	 d8 [ cis d e ] f [ e f d ] | % 39
	 e8 [ d e f ] \stemDown g [ a g f ] | % 40
	 e8 [ d e f ] g [ f g e ] | % 41
	 \stemUp d,2 a' | % 42
	 g,2 d' | % 43
	 c g' | % 44
	 f es | % 45
	 s1 | % 46
	 g,2 g | % 47
	 g g  | % 48
	 as as | % 49
	 a! a | % 50
	 g s | % 51
	 s2. d''8 [ f-5 ]  | % 52
	 es,16 [ d' (g) b,] c8 [c] c4 b | % 53
	 g f fis d | % 54
	 es8 s8 s4  s2 | % 55
	 s1 | % 56
	 c'8 [ bes16 a ]<g bes>8 s8 <g bes>8 s8 s8 f8 | % 57
	 s8 d' [ d d ] d [ c16 bes ] c8 [ d ] | % 58
	 es8 es [ es es ] es [ d16 c ] d8 [ es ] | % 59
	 es [ d ] d [ c ] c [ bes ] s4 | % 60
	 s8 f8 [ f f ] f [ g16 f ] es8 [ d ] | % 61
	 es8 bes' [ bes bes ] bes s8 f8 [ f ] | % 62
	 d'4 c4 s8 bes8 s4 | % 63
 	 bes,2 s2 | % 64
 	 es s | % 65
 	 d r16 d4.. | % 66
 	 r16 bes4.. r16 g4.. | % 67
 	 r1 | % 68
 	 d'2 d | % 69
 	 d d  | % 70
 	 d d | % 71
 	 d d | % 72
 	 d d | % 73
	 s4. bes'8 es4 s8 a,8 | % 74
	 d4 s8 d8 d4 cis4 | % 75
	 c4 bes4 bes4 a4 | % 76
	 a4 g g f | % 77
	 f4 s4 es4 s4 | % 78
	 a,4 s2. | % 79 
	 s4 f' es8 [ es16 d ] es4 | % 80
	 fis8 [ a16 g ] a4  a8 [ g16 fis ] g8 s8 | % 81
	 cis4 s c8 bes [ bes bes ] | % 82
	 a8 s a8 s d8 s g,8 s | % 83
	 f8 s f8 [ d'] d [c16 bes ] c8 c | % 84
	 c8 [ es16 (c) ] d8 [ a ] bes [ es16 (c)] d8 [ a ] | % 85
	 \stemUp a8 [bes ] bes [ <a e> ] bes8. [ c16 ] a4 | % 86
	 s1 | % 87
	 s1 | % 88
	 s1 | % 89
	 s1 | % 90
	 s1 | % 91
	 s1 | % 92
	 c4. s8 s4 \stemDown d,8 [ cis'] | % 93
	 \stemUp a4 s bes2 \bar "|." % 94
}

 melodyThree =  \relative g' {
	 \stemDown 
	 s1 | % 1
	 r8 g8 [ g  g ] g [ f16 es ] f8 [ d ] | % 2
	 es4 es d d | % 3
	 s2 c4 bes | % 4
	 a d g,8 r8  f'8 [ d ] | % 5
	 es2 d4 s | % 6
	 s1 | % 7
	 s1 | % 8
	 s1 | % 9
	 s1 | % 10
	 s4 g8-2 [ g ] es8-1 r8 f8 [ f ] | % 11
	 d8 r8 es8 [ d ] c8 s8 s4 | % 12
	 s4 r16 s8. s2 | % 13
	 g8 r8 r4 r2 | % 14
	 s1 | % 15
	 s1 | % 16
	 s1 | % 17
	 s1 | % 18
	 s1 | % 19
	 s2 s8 a'8 [ a  a ] | % 20
	 a8 [ g16 f ] g8 [ e ] <f d'> [ <d d'> <e d'> <f d'> ] | % 21
	 g8 [ f ] e8 r8 <a, e'>4 d8 [ d ] | % 22
	 <g, d'>4 r8 a8 bes r8 r8 g8 | % 23
	 a8 s8 s2. | % 24
	 d8 [ c16 bes ] c8 [ a ] bes8 r8 g8 r8 | % 25
	 a8 r8 r8  b8 c4 a4 | % 26
	 d4 s4 d8 r8 s4 | % 27
	 gis,4  r4 g f' | % 28
	 bes r8 e,8 a4  r8 d,8 | % 29
	 g4 f e <e a,> | % 30
	 d <d g,> <cis g'>4 <d f> | % 31
	 bes4 bes a r8 a8 | % 32
	 a4 r8 a'8 bes4 a | % 33
	 g4 s2. | % 34
	 s2 e'2 | % 35
	 e2 d2^3 | % 36
    	 e,2 a2 | % 37
	 d,2 d2 | % 38
	 d2 d2 | % 39
	 d2 d2 | % 40
	 d2 d2 | % 41
	 s1 | % 42
	 s1 | % 43
	 s1 | % 44
	 s1 | % 45
	 r2 r | % 46
	 s1 | % 47
	 s1 | % 48
	 s1 | % 49
	 s1 | % 50
	 s2 r2 | % 51
	 <g, d' b' >8 \stemUp g' [ < g es' > g ] <g, g' d'>8 [f'16 es ] \stemDown f8 [ d ] | % 52
	 g,8  s8 s8 es'8 <g, d'>4 g' | % 53
	 c, aes a \stemDown g| % 54
	 c8 c [ c c ] c [ bes16 a ] bes8 [ g ] | % 55
	 a8 f'8 [ f f ]  f [ es16 d ] es8 [ c ] | % 56
	 d8 s8 g,8 r8 c8 r8 r8 s | % 57
	 bes'8 <bes, f'>8 [ <bes f'>8 <bes f'>8 ] f'8 s8 s4 | % 58
	 s8 <c g'>8 [ <c g'>8 <c g'>8 ] g'8 s8 s4 | % 59
	 f8 s8 es8 s8 d8 s8  r4 | % 60
	 bes8 bes [ bes a ] g8 r8 a8 [ bes] | % 61
	 c8 d [ d d ] <g, d'>8 r8 a [ bes ] | % 62
	 es4 s4 r8 d8 f4 | % 63
	 s2 r | % 64
	 s r | % 65
	 s1 | % 66
	 s1 | % 67
	 s1 | % 68
	 s1 | % 69
	 s1 | % 70
	 s1 | % 71
	 s1 | % 72
	 s1 | % 73
	 r4 r8 s8 g4 r8 s8 | % 74
	 fis4 r8 g8 es4  e4 | % 75
	 d4 s4 <c g'>4 s4 | % 76
	 bes4 s4 a4 s4 | % 77
	 g4 r g r | % 78
	 s4 r4 r2 | % 79 
	 bes4  b  c s | % 80
	 d8 s8 s8 s8 d8 s8  g8 r8 | % 81
	 e4 r d8 [ d d d ] | % 82
	 d8 [ c16 bes ] <c d>8 [ a ] <b g'>8 [ c16 (b) ] c8 [ g ] | % 83
	 a8 [ bes16 (a) ] bes8 [ d ] es8 s s es8 | % 84
	 d8 s s d8 d8 s s d8 | % 85
	 es8 [ d ] d [ cis ] d8 s s4 | % 86
	 g,4 r a' r | % 87
 	 g, r fis' r | % 88
 	 g,4 r a16 [ c fis a ] r4 | % 89
 	 bes,16 [ d g bes ] r4 c,16 [ es g c ] r4 | % 90
 	 d,16 r8 d'16 [ cis ] r8 c16 [ b ] r8 bes16 [ a ] r8 as16    | % 91
	 g r8 g16 [ fis ] r8 f16 [ e ] r16 r8 r16 es16 ( d c )  | % 92
	 d4. r8 r r s4 | % 93
	 d4 r <g, d'>2 \bar "|." % 94

}

 


%melodyO = << \melodyOne >>
%melodyT = << \melodyTwo \melodyThree >>


% The score definition

\score {
	\new StaffGroup <<    
	\new Staff { \clef treble \key f \major \time 4/4 \melodyOne }
    
	\new Staff { \clef treble \key f \major \time 4/4 << \melodyTwo \\ \melodyThree >>}
        

    >>
	\layout { }
 	\midi { \tempo 4 = 50 }
}	

