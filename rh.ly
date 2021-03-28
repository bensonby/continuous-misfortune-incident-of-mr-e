rh-intro = \relative c' {
  \repeat unfold 8 { <bes d>16 f }
  \repeat unfold 8 { <bes c>16 f }
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 8 { <f bes>16 d }
}

rh-verse-A = \relative c' {
  \repeat unfold 8 { <bes d>16 f }
  \repeat unfold 8 { <bes c>16 f }
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 7 { <f a>16 d } <f bes> d
  \repeat unfold 8 { <bes' d>16 f }
  \repeat unfold 8 { <bes c>16 f }
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 4 { <f a>16 d }
  <f a>16 d q d <f bes> d <f d'> d

  \repeat unfold 8 { <bes' d>16 g }
  \repeat unfold 8 { <bes ees>16 g }
  \repeat unfold 8 { <bes ees f>16 f }
  <g bes ees>1
  R1
}

rh-chorus-A = \relative c'' {
  \clef treble
  \repeat unfold 8 { <bes d>16 g }
  \repeat unfold 8 { <bes c>16 ges }
  \repeat unfold 8 { <a c>16 f }
  \repeat unfold 6 { <a c>16 f } <bes d> f <bes ees> f
  <g bes ees>4 \repeat unfold 6 { d16 ees }
  \repeat unfold 3 { <a c>16 fis } q g fis ees d c bes8 <c ees>
  <a c>4 q <a ees'> <bes d> <aes c>4 d8 ees f g \tuplet 3/2 4 { aes8 bes c }

  \repeat unfold 8 { <bes d>16 g }
  q16 ges \repeat unfold 4 { <bes c>16 ges } <bes d> ges <bes ees> ges <aes f'>8~
  q4 q8 q~ q <aes ees'> <aes f'> <g b d>~
  q2 d4 <g, b>
  <d' ees>4. <ees bes'>8~ q2
  r4 <a c> <ges bes des>2
}

rh-episode-A = \relative c'' {
  <d f bes>8. a'16~ a8 f~ f d c bes
  <a c>8. <bes d>16~ q8 q8~ q8. d,16 g a bes d
  <e a>8 g16 c~ c8 bes16 d~ d8 c16 bes~ bes16 g8.
  <ees ges>8 <ees c'>16 q~ q4 r16 bes' ges f bes, ges f ees
}

rh-verse-B = \relative c' {
  <d f>4 q q <bes c d>
  <c d>4 q q q
  <a d>4 q q q
  q q q q
  <bes d ees>4. <ees bes'>8~ q4 <d ees>4~
  q4. <ees bes'>8~ q4 <d ees>4
  <bes ees>4. <bes ees f>8~ q4 <ees f bes>4
  <f bes c>2
}
rh-chorus-B = \relative c' {
  <bes bes'>4 <c c'>
  <g' bes d>4 q q q
  <ges bes c>4 q q q
  <f a c>4 q q q
  <f a c>4 q q <g bes d>
  <g bes ees>4 q q q
  <fis a d>4 q q q
  <g a bes>4 q q q
  <f aes> <f aes c> <f aes d> <f f'>

  <g bes ees g>4 <g bes d> q q
  <ges bes d>8. <ges bes c>16~ q4 q8 d' ees <aes, c f>~
  q4. q8~ q4 <c, f aes>4
  <d g b>1
  <g, d' ees>4. <d' ees bes'>8~ q4 <d ees>4
  <c f>4.
}
rh-episode-B = \relative c' {
  \makeOctaves 1 { ees8 des c f fis }
  g'16 bes, d g a d, g a bes d, a' bes \makeOctaves 1 { d, c bes a }
  a'16 c, f a bes c, f bes c c, f c' \makeOctaves 1 { ees, d c bes }
  c' e, g c d e, g d' e g, d' e \makeOctaves 1 { f, e f g }
  <g g'>8 \tuplet 3/2 4 { ees'16 bes g ees bes g ees bes g }
  <fis a d>8 \tuplet 3/2 4 { d'16 fis a d fis a d fis a }
  \tuplet 3/2 4 {
    bes16 a g d bes a g d c bes a bes
    c bes c d ees d c bes c bes a g
    a'' g f bes, a g d bes a g a bes
    c bes c d ees d c bes c bes c bes
    g'' f ees bes g f ees bes a g a bes
    c bes c d ees d ees f g fis g a
  }
  <d, d'>2. <d' fis a d>4
}
rh-bridge = \relative c'' {
  <g bes d>4 <bes d bes'>2 q4
  <ges bes ees>4 <bes ees bes'>2 q4
  <f bes c f>4. q8~ q4. <g d' e g>8~
  q2 \tuplet 6/4 { g''16 d c g d c } g4
  <g, bes ees>8-. \repeat unfold 7 { q-. }
  <f bes f'>8-. \repeat unfold 7 { q-. }
  \makeOctaves 1 { ges'8 ges ges ges ges f ges a~ }
  q1
}
rh-chorus-C = \relative c'' {
  <g bes d>1
  <ges bes c>2 f'4 bes,
  <f a c>1
  \arpeggioArrowDown
  <d f a>1\arpeggio
  ees4.  <g, ees'>8 <g bes ees>8 q q q
  <a c ees fis>4. q8~ q4 q8 q
  r8 <bes d> <bes des> <aes c>~ q4. <f aes d>8~
  q2 <d' d'>8 <ees ees'> <f f'>4

  <g bes d g>4 <g bes d> g8 d <g bes> d
  <ges d'>8. <ges c>16~ q4 <ges c>8 d' <ges, ees'> <aes c f>~
  q4. q8~ q4. <b d aes'>8~
  q8 <b d g>4. c,8 d f4
  <d ees>4. <ees bes'>8~ q4 <d ees>4
  r4 <c f> <bes ges'>2
}
rh-outro = \relative c' {
  \clef bass
  \repeat unfold 8 { <bes d>16 f }
  \repeat unfold 8 { <bes c>16 f }
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 7 { <f bes>16 d } q16~ d~
  <d f bes>1
}
