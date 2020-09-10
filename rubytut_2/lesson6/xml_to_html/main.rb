require 'rexml/document'

current_path = File.dirname(__FILE__)
file_path = current_path + '/data/business_card.xml'

abort 'XML file not found' unless File.exists? file_path

file = File.read(file_path, encoding: 'UTF-8')

doc = REXML::Document.new(file)

card = {}

%w[name phone email occupation photo].each do |field|
  card[field] = doc.root.elements[field].text&.strip
end

# create a new document to which we gonna put all the HTML structure
html = REXML::Document.new

# add the first element
html.add_element('html', { 'lang' => 'en' })

# add head tag with meta info
html.root.add_element('head').add_element('meta', 'charset' => 'UTF-8')

# add body
body = html.root.add_element('body')

# add all necesssary elements to the document body
body.add_element('p').add_element('img', { 'src' => card['photo'] })
body.add_element('h1').add_text(card['name'])
body.add_element('p').add_text(card['occupation'])
body.add_element('p').add_text("Phone: #{card['phone']}")
body.add_element('p').add_text("Email: #{card['email']}")

# create the file path
html_file_path = current_path + '/data/business_card.html'

# create a new file with that path to which we are going to write our HTML elements
file = File.new(html_file_path, 'w:UTF-8')

# don't forget to add the following line to so that browser understands that it's a HTML file
file.puts('<!DOCTYPE HTML>')

# write and save HTML elements into the file
html.write(file, 2)

# don't forget to close the file
file.close


# Pattern

# 1. Create an empty file
# 2. Use this file to create a new XML document
# 3. Read XML data from this document and save it in a Hash
# 4. Create a new REXML document
# 5. Add html, head, body and other necessary elements to this document
# 6. Create a new file with .html extension
# 7. Use this file to write and save HTML structure (pass the emty file into the REXEML document's #write method)
# 8. HTML file is successfully created, don't forget to #close the file
