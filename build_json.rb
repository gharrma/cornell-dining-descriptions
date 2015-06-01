# Sorry, this isn't very readable

locations = File.open("locations.txt")

loc_objects = locations.readlines.map { |line|
  location = line.strip
  sections = File.open("locations/" + location + ".txt").read.split("\n\n\n")
  if sections.length != 3 then
    puts "Warning: Skipping " + location + " due to incorrect format."
    next nil
  end

  # The location id, mapped to a dictionary of 'what', 'description', and 'menu'
  "\"" + location + "\": " + "{" + (0..2).map { |i|
    title = "\"" + ["what", "description", "menu"][i] + "\":"
    content = "\"" + sections[i].strip.gsub("\n", "\\n") + "\""
    title + content
  }.join(",") + "}"

}.compact.join(",")

print "{" + loc_objects + "}"

locations.close