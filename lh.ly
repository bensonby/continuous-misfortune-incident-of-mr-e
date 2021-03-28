lh-intro = \relative c, {
  <bes bes'>2.~ q8 f'
  q2. f4
  <g, g'>2. d'4
  q1
}
lh-verse-A = \relative c, {
  <bes bes'>2. f'4
  q2. f4
  <g, g'>2. d'4
  q1
  <bes bes'>2. f'4
  <bes, bes'>2. f'4
  <g, g'>2. d'4
  <g, g'>2. d'4
  <c c'>2. g'4
  <c, c'>2. g'4
  <f, f'>2. c'4
  q1
  R1
}
lh-chorus-A = \relative c, {
  <ees ees'>2. bes'4
  q4. bes8 ees f ges ees
  <d, d'>2. a'4
  g2 d'4 g,
  c,8 g' c d ees4 c
  d,2 d'4 a8 d
  g,4. d'8~ d4. g,8
  f4 c' bes8 f' aes4

  <ees, ees'>2. bes'4
  q2~ q8 bes8 ees bes
  <d, d'>8 aes' d f8~ f4 aes, % d or c?
  g8 d' f g <b d>2
  c,8 g' c d~ d4 c,
  f,8 c' f4 <ees, ees'>2
}
lh-episode-A = \relative c {
  g16 d' g a bes d bes a g d g, d' g d g, d'
  f, c' f a bes d bes a f d f, d' f d f, d'
  e, bes' d e g bes d bes g e d bes g d' g, d'
  ees, bes' ees f ges bes ges f f,8 c'16 f~ f16 ges f8
}
lh-verse-B = \relative c {
  bes2. f'4
  bes,2 f'
  g,2~ g8 d'4.
  g,2~ g8 d'4.
  c8 g' c d8~ d g,4 c,8
  c8 g' c d8~ d g,4 c,8
  f,8 c' f4~ f8 c4 f,8
  f8 c' f c f,4 f
}
lh-chorus-B = \relative c, {
  ees4. bes'8~ bes8 ees4 bes8
  ees,4. bes'8~ bes8 ees4 bes8
  d,4. a''8~ a d, a d
  g,4. d'8~ d g4 g,8
  c,4. c'8~ c d ees g
  d,4. d'8~ d fis d a
  g4. d'8~ d8 g4 g,8
  f4 c'8 f bes, f' aes bes,
  ees,2~ ees8 bes'4 ees8
  ees,4. bes'8~ bes ees4 ees,8
  d8 aes' d f~ f d aes4
  g8 d' f g g, d' f4
  c,8 g' c ees~ ees g c, c,
  f8 c' f c ees, bes' ees bes
}
lh-episode-B = \relative c { 
  g16 d' g d a' d, g d
  g,16 d' g d \makeOctaves 1 { d c bes a }
  f16 c' f c a' c, f c
  f, c' f c \makeOctaves 1 { ees d c bes }
  e, c' e c g' c, e c
  e, c' e c \makeOctaves 1 { f, e f g }
  <ees ees'>8 bes'4 ees8 <d, d'>2

  <g, g'>4 <d'' g bes> <g,, g'>4 <bes' d g>
  \repeat unfold 2 { <f, f'>4 <d'' f a> }
  <ees,, ees'>4 <ees'' g bes> <ees,, ees'> <bes'' ees g>
  << {
    r8 a32 d fis d fis a fis a
    d32 \cr d fis a d d fis a d d fis a
    \cl \clef treble <d,, fis a>4 \clef bass
  } \\ {
    <d,,,, d'>1
  } >>
}
lh-bridge = \relative c, {
  <g g'>8 d'' g d q d g g,
  <ges, ges'>8 ees'' ges ees q ees ges ges,
  <f, f'>8 bes' c f~ f c bes <e,, e'>8~
  q8 bes''' c e e,4 e,

  <c c'>8-. \repeat unfold 7 { q-. }
  <d d'>8-. \repeat unfold 7 { q-. }
  ees8 bes' ees <f ges bes>~ q ees4 <f, f'>8~
  q8 c' f c' \clef treble <bes' c f>2 \clef bass
}
lh-chorus-C = \relative c {
  ees1
  ees1
  d1
  g,4. d'8 f4 a
  <c, bes'>4. <c, g'>8 q q q q
  <d a'>8 \repeat unfold 7 { q }
  r8 <g g'> <ges ges'> <f f'>~ q4. <bes, bes'>8~
  q8 f' bes f bes, bes' <bes' f'>4

  e,,1
  ees4. bes'8 ees bes ees,4
  d8 d' f aes~ aes d d, g,~
  g8 f'4 d8 g,4 f'
  c8 g' c d~ d8 g, c c,
  f,8 c' f4 ees2
}
lh-outro = \relative c, {
  <bes bes'>2.~ q8 f'
  q2. f4
  <g, g'>2. d'4
  q1
  <bes, bes'>1
}