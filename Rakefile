require 'fileutils'
require 'rake/clean'

def latex(who)
  puts
  puts (cmd_string = "latex #{who}")
  rerun = false
  IO.popen(cmd_string){|io|
    while s = io.gets
      puts s
      rerun = true if /rerun/i  =~ s
    end
  }
  latex(who) if rerun
end

CLEAN.include('*.ps','*.dvi','*.pdf',
              '*.log','*.out','**/*.aux', '*.blg',
              '*.bbl','*.toc','*.lot','*.lof')
NAME = "thesis"
MAIN = "#{NAME}.pdf"
TEX = FileList["*.tex"]
DVI = MAIN.ext('.dvi')

desc "The default task : preview version"
task :default => MAIN
file MAIN => DVI
file DVI => TEX

file DVI do     
  latex MAIN.ext('.tex')
end

desc "Screen resolution compilation"
file MAIN => DVI do
  main_dvi = MAIN.ext('.dvi');
  main_ps = MAIN.ext('.ps');
  sh "dvips -D600 -Z #{main_dvi}"
  sh "ps2pdf #{main_ps}"
end
