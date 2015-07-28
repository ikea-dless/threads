p 'start post seed'

posts = []

%w(ikeda ikeda2 ikeda3 ikeda4 ikeda5 ikeda6 ikeda7 ikeda8 ikeda9 ikeda10 ikeda11 ikeda12 ikeda13 ikeda14 ikeda15 ikeda16
   ikeda17 ikeda18 ikeda19 ikeda20 ikeda21 ikeda22 ikeda23 ikeda24).each do |name|
  posts.append(name: name)
end

%w(ikeda@ikeda.jp ikeda2@ikeda.jp ikeda3@ikeda.jp ikeda4@ikeda.jp ikeda5@ikeda.jp ikeda6@ikeda.jp ikeda7@ikeda.jp
   ikeda8@ikeda.jp ikeda9@ikeda.jp ikeda10@ikeda.jp ikeda11@ikeda.jp ikeda12@ikeda.jp ikeda13@ikeda.jp
   ikeda14@ikeda.jp ikeda15@ikeda.jp ikeda16@ikeda.jp ikeda17@ikeda.jp ikeda18@ikeda.jp ikeda19@ikeda.jp
   ikeda20@ikeda.jp ikeda21@ikeda.jp ikeda22@ikeda.jp ikeda23@ikeda.jp ikeda24@ikeda.jp).each_with_index do |email, i|
  posts[i].store('email', email)
end

%w(thisIsAComment thisIsAComment2 thisIsAComment3 thisIsAComment4 thisIsAComment5 thisIsAComment6 thisIsAComment7
   thisIsAComment8 thisIsAComment9 thisIsAComment10 thisIsAComment11 thisIsAComment12 thisIsAComment13 thisIsAComment14
   thisIsAComment15 thisIsAComment16 thisIsAComment17 thisIsAComment18 thisIsAComment19 thisIsAComment20
   thisIsAComment21 thisIsAComment22 thisIsAComment23 thisIsAComment24).each_with_index do |comment, i|
  posts[i].store('comment', comment)
end

Post.create(posts)
