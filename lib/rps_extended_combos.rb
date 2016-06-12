
module RpsExtendedCombinations

  MOVES = [:r, :p, :s, :l, :sp, :g, :b, :spm, :w]

  MOVE_RESULT = {[:r, :s] => 'Rock crushes Scissors.',
                [:r, :l] => 'Rock crushes Lizard.',
                [:r, :w] => 'Rock interrupts Wizard',
                [:r, :spm] => 'Rock knocks out Spider-Man.',
                [:p, :r] => 'Paper covers Rock.',
                [:p, :sp] => 'Paper disproves Spock.',
                [:p, :g] => 'Paper jams Glock.',
                [:p, :b] => 'Paper delays Batman.',
                [:s, :p] => 'Scissors cut Paper.',
                [:s, :l] => 'Scissors decapitate Lizard.',
                [:s, :w] => 'Scissors cut Wizard.',
                [:s, :spm] => 'Scissors cut Spider-Man.',
                [:l, :sp] => 'Lizard poisons Spock.',
                [:l, :p] => 'Lizard eats Paper.',
                [:l, :b] => 'Lizard confuses Batman (because he looks like Killer Croc).',
                [:l, :g] => 'Lizard is too small for Glock.',
                [:sp, :s] => 'Spock smashes Scissors.',
                [:sp, :r] => 'Spock vaporizes Rock.',
                [:sp, :w] => 'Spock zaps Wizard.',
                [:sp, :spm] => 'Spock befuddles Spider-Man.',
                [:w, :b] => 'Wizard stuns Batman.',
                [:w, :p] => 'Wizard burns Paper.',
                [:w, :l] => 'Wizard transforms Lizard.',
                [:w, :g] => 'Wizard melts Glock.',
                [:b, :spm] => 'Batman scares Spider-Man.',
                [:b, :s] => 'Batman dismantles Scissors.',
                [:b, :r] => 'Batman explodes Rock.',
                [:b, :sp] => 'Batman hangs Spock.',
                [:spm, :g] => 'Spider-Man disarms Glock.',
                [:spm, :l] => 'Spider-Man defeats Lizard.',
                [:spm, :p] => 'Spider-Man rips Paper.',
                [:spm, :w] => 'Spider-Man annoys Wizard.',
                [:g, :r] => 'Glock breaks Rock.',
                [:g, :b] => 'Glock kills Batman\'s mom.',
                [:g, :sp] => 'Glock shoots Spock.',
                [:g, :s] => 'Glock dents Scissors.'
                }
end