parking_lot = {
    row_1: {
      left: ['Mercedes', 'Acura', 'Infiniti'],
      right: ['Toyota', 'Nissan', 'BMW']
    },
    row_2: {
      left: ['Honda', 'VW', 'Acura', 'Kia'],
      right: ['Volvo 18-Wheeler']
    },
    center_lane: 'Old lady walking'
}

walmart = {
    front: ['McDonalds', 'Customer Service'],
    aisle_1: {
      left: 'laundry detergent',
      right: 'soap'
    },
    aisle_2: {
      left: 'candy',
      right: 'Playstation 4'
    },
    back: ['Dairy', 'Gatorade', 'Juice', 'Soda']
}

p parking_lot[:row_2][:left]
p parking_lot[:row_1][:right]
p parking_lot[:center_lane]
parking_lot[:row_1][:left][2] = 'Maserati'
p parking_lot[:row_1][:left]
parking_lot[:center_lane].replace 'Old lady falling'
p parking_lot[:center_lane]

p walmart[:front][0]
p walmart[:aisle_2][:left]
p walmart[:back]
walmart[:front][0].replace "Burger King"
p walmart[:front]
walmart[:back] << 'Water' << 'Energy Drinks'
p walmart[:back]



