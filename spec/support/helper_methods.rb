# sleeps/pauses when provided an environment variable value (useful when debugging a spec)
def pause
  sleep_secs = ENV['PAUSE']
  if sleep_secs && sleep_secs != ''
    putsd
    putsd "Pausing #{sleep_secs}s..."
    putsd
    sleep sleep_secs.to_i
  end
end
