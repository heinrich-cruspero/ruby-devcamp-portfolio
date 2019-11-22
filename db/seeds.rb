['Apple', 'Banana', 'Cherry'].each do |topic|
  Topic.create!(
    title: "#{topic} Topic"
  )
end

5.times do |blog|
  Blog.create!(
    title: "Blog Entry ##{blog}",
    body: 'Bacon ipsum dolor amet salami pork belly alcatra drumstick kevin flank chuck bacon andouille pig spare ribs t-bone pancetta beef picanha. Bacon beef ribs pig buffalo jowl salami doner meatloaf brisket andouille capicola ham hock chuck ball tip pancetta. Alcatra fatback pork chop chuck spare ribs kevin jerky bresaola sausage meatball beef ribs andouille pastrami short ribs. Pastrami flank bresaola chuck kevin beef ribs tenderloin, capicola chislic fatback t-bone',
    topic: Topic.order('RANDOM()').first
  )
end

3.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title ##{rand(1..200)}",
    subtitle: 'Ruby Programming',
    body: 'Bacon ipsum dolor amet salami pork belly alcatra drumstick kevin flank chuck bacon andouille pig spare ribs t-bone pancetta beef picanha. Bacon beef ribs pig buffalo jowl salami doner meatloaf brisket andouille capicola ham hock chuck ball tip pancetta. Alcatra fatback pork chop chuck spare ribs kevin jerky bresaola sausage meatball beef ribs andouille pastrami short ribs. Pastrami flank bresaola chuck kevin beef ribs tenderloin, capicola chislic fatback t-bone',
    main_image: "https://picsum.photos/id/#{rand(1..200)}/600/300",
    thumb_image: "https://picsum.photos/id/#{rand(1..200)}/200/300"
  )
end

5.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title ##{rand(1..200)}",
    subtitle: 'Angular',
    body: 'Bacon ipsum dolor amet salami pork belly alcatra drumstick kevin flank chuck bacon andouille pig spare ribs t-bone pancetta beef picanha. Bacon beef ribs pig buffalo jowl salami doner meatloaf brisket andouille capicola ham hock chuck ball tip pancetta. Alcatra fatback pork chop chuck spare ribs kevin jerky bresaola sausage meatball beef ribs andouille pastrami short ribs. Pastrami flank bresaola chuck kevin beef ribs tenderloin, capicola chislic fatback t-bone',
    main_image: "https://picsum.photos/id/#{rand(1..200)}/600/300",
    thumb_image: "https://picsum.photos/id/#{rand(1..200)}/200/300"
  )
end
