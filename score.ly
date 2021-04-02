\version "2.20.0"

\include "makeOctaves.ly"
\include "definitions.ly"
\include "rh.ly"
\include "lh.ly"
\include "melody.ly"
\include "chords.ly"

\header {
  title = "E先生連環不幸事件"
  subtitle = "Piano Accompaniment"
  composer = "呂爵安、溫翰文、Cousin Fung"
  arranger = "Arranged by Benson"
}

global-tempo = {
  \tempo 4 = 82
}
global = {
  \key bes \major
}

rh = \relative c' {
  \clef bass
  \global-tempo
  \global
  \rh-intro
  \rh-verse-A
  \rh-chorus-A
  \rh-episode-A
  \rh-verse-B
  \rh-chorus-B
  \rh-episode-B
  \rh-bridge
  \rh-chorus-C
  \rh-outro
  \bar "|."
}

lh = \relative c {
  \clef bass
  \global
  \lh-intro
  \lh-verse-A
  \lh-chorus-A
  \lh-episode-A
  \lh-verse-B
  \lh-chorus-B
  \lh-episode-B
  \lh-bridge
  \lh-chorus-C
  \lh-outro
  \bar "|."
}

melody = \relative c' {
  \global
  \clef treble
  \melody-full
}

dynamics = {
  % intro
  s1\mf s1*3

  % verse-A
  s1\mp s1*6 s2 s4..\< s16\!
  s1*2 s2. s8.\> s16\! s1*2

  % chorus A
  s1\mf s1*6 s2.\< s8. s16\!
  s1 s2 s4..\< s16\! s1 s4..\> s16\! s2 s1*2

  % episode A
  s1\mf s2. s4\< s1\! s2 s16 s8.\> s4

  % verse-B
  s1\mp s1*5 s1\cresc s1

  % chorus B
  s1\mf s1*6 s2..\< s8\!
  s1\! s1*4 s2 s4..\< s16\!

  % episode B
  s1\f s1*7

  % bridge
  s1\f s1*3 s1-\pCresc s1
  s1\f s4..\> s16\! s2

  % chorus C
  s1\p s1*3
  s4. s8\cresc s2 s2... s16\!
  s8 s4.\f s2 s1

  s1*3 s2 s4\> s4\! s1\mp s1

  % outro
  s1*3 s2. s4-"rit." s1
}

\paper {
  page-breaking = #ly:page-turn-breaking
  oddFooterMarkup = \markup {
    \fill-line {
      "https://music.bensonby.me"
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}
\score {
  <<
    \new ChordNames {
      \chords-full
    }
    \new Staff = "melodystaff" \with {
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
    } <<
      \set Staff.instrumentName = #"vocal"
      \set Staff.midiInstrument = #"oboe"
      \set Staff.midiMinimumVolume = #0.9
      \set Staff.midiMaximumVolume = #1
      \new Voice = "melody" {
        \melody
      }
      \context Lyrics = "lyrics" { \lyricsto "melody" { \lyricsmain } }
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = #"Piano"
      \new Staff = "right" {
        \set Staff.midiInstrument = #"acoustic grand"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.7
        \rh
      }
      \new Dynamics = "Dynamics_pf" \dynamics
      \new Staff = "left" {
        \set Staff.midiInstrument = #"acoustic grand"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.7
        \lh
      }
    >>
  >>
  \layout {
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      \Staff \RemoveEmptyStaves
    }
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      % \Dynamics \RemoveEmptyStaves
    }
    \context {
      \Score
      % Remove all-rest staves also in the first system
      \override VerticalAxisGroup.remove-first = ##t
      % If only one non-empty staff in a system exists, still print the starting bar
      % \override SystemStartBar.collapse-height = #1
    }
    \context {
      \ChordNames
      \override ChordName #'font-size = #-3
    }
  }
  \midi {
    \context {
      % \ChordNameVoice \remove Note_performer
    }
  }
}
