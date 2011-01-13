#!/usr/bin/env ruby

kanali = {
  1=>"HRT1",
  2=>"HRT2",
  3=>"RTL",
  4=>"NOVA",
  291=>"RTL2",
  290=>"DOMA"
}

s = ""
i = 0
while s=(gets.chop rescue nil)
  if s =~ /^<div id/
    puts "== KANAL: #{kanali[s[/phtab_(\d+)/,1].to_i]}"
    i=1
  else
    puts s[/phtime\"\>([0-9:]*)\</,1] + " #{i==3 ? "=" : "-"}> " + s[/\/span..(.+)\</,1].gsub(/<a .+">/, '').gsub(/<\/a>/, '')
    i+=1 if i>0
    i=0 if i==3
  end
end

