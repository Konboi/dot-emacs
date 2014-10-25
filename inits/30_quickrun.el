(require 'quickrun)

(quickrun-add-command "c/gcc"
                      '((:exec . ("%c -std=c++0x %o -o %e %s"
                                  "%e %a")))
                      :override t)
