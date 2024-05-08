# Name: jaspreet Kaur

# Dollar amount before tax
sub_total = 5.00

# Constants for tax rates
GST_RATE = 0.05
PST_RATE = 0.07

# Calculate taxes and grand total
gst = sub_total * GST_RATE
pst = sub_total * PST_RATE
grand_total = sub_total + gst + pst

# Format the output
puts "Subtotal: $%.2f" % sub_total
puts "PST: $%.2f - %.0f%%" % [pst, PST_RATE * 100]
puts "GST: $%.2f - %.0f%%" % [gst, GST_RATE * 100]
puts "Grand Total: $%.2f" % grand_total

# Print a short message after the grand total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end
