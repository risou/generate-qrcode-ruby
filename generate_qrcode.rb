require 'rqrcode'

qr = RQRCode::QRCode.new("https://blog.risouf.net/", :size => 4, :level => :h)
png = qr.as_png(
  bit_depth: 1,
  border_modules: 4,
  color_mode: ChunkyPNG::COLOR_GRAYSCALE,
  color: 'black',
  file: nil,
  fill: 'white',
  module_px_size: 6,
  resize_exactly_to: false,
  resize_gte_to: false,
  size: 480
)

IO.write('qr.png', png.to_s)
