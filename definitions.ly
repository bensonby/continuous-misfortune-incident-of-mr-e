cr = \change Staff = "right"
cl = \change Staff = "left"

pCresc = \markup \concat { \dynamic "p" \italic \larger "  cresc." }

shpSlurA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) PhrasingSlur
hairpinA = \once \override Hairpin.Y-offset = #1
dynamicShiftA = \once \override DynamicText.Y-offset = #-5.2
dynamicShiftB = \once \override DynamicText.X-offset = #-0.8
textScriptShiftA = \once \override TextScript.extra-offset = #'(0 . 0.7)
metronomePaddingA = \once \override Score.MetronomeMark.padding = #4
