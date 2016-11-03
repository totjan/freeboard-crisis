current_valuation = 0
current_karma = 0

SCHEDULER.every '2s' do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = rand(100)
  current_karma     = rand(200000)

  send_event('valuation', { current: current_valuation, last: last_valuation })
  send_event('karma', { current: current_karma, last: last_karma })
  send_event('synergy_1',   { value: rand(100) }) 
  send_event('synergy_2',   { value: rand(100) }) 
  send_event('synergy_3',   { value: rand(100) }) 
  send_event('synergy_4',   { value: rand(100) }) 
  send_event('synergy_5',   { value: rand(100) }) 
  send_event('synergy_6',   { value: rand(100) }) 
  send_event('synergy_7',   { value: rand(100) }) 
  send_event('synergy_8',   { value: rand(100) }) 

end
