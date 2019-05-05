# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'donny', first_name: 'Don', last_name: 'Tee', password: 'password')
User.create(username: 'ryan', first_name: 'Ryan', last_name: 'Arr', password: 'password')
User.create(username: 'dave', first_name: 'Dave', last_name: 'Kay', password: 'password')

Website.create(url: 'http://cnn.com/politics', root_url: 'http://cnn.com')
Website.create(url: 'http://diginn.com/lasagna', root_url: 'http://diginn.com')
Website.create(url: 'http://imdb.com/avengers_endgame', root_url: 'http://imdb.com')

Trumpet.create(summary: "Article claimed I am a liar", trumpet_type: 'Missing source', content: 'Liar, liar, pants on fire.', user_id: 1, website_id: 1)
Trumpet.create(summary: "Ryan claimed lasagna contained a piece of glass", trumpet_type: 'Fact check', content: 'The lasagna had a piece of glass in it.', user_id: 2, website_id: 2)
Trumpet.create(summary: "Dave claimed the movie was three hours long", trumpet_type: 'Fact check', content: 'The movie was three hours long!', user_id: 3, website_id: 3)

Reaction.create(reaction_type: "cheer", user_id: 1, trumpet_id: 1)
Reaction.create(reaction_type: "cheer", user_id: 2, trumpet_id: 2)
Reaction.create(reaction_type: "cheer", user_id: 3, trumpet_id: 3)
Reaction.create(reaction_type: "jeer", user_id: 2, trumpet_id: 1)
Reaction.create(reaction_type: "jeer", user_id: 3, trumpet_id: 1)

###### ------ NEW SEED DATA (INCOMPLETE) ------- #######


# User.create(username: 'admin', first_name: 'admin', last_name: 'admin', password: 'password')
# User.create(username: 'ryan', first_name: 'Ryan', last_name: 'R', password: 'password')
# User.create(username: 'dave', first_name: 'Dave', last_name: 'K', password: 'password')
# User.create(username: 'adam', first_name: 'Adam', last_name: 'G', password: 'password')
# User.create(username: 'akram', first_name: 'Akram', last_name: 'H', password: 'password')
# User.create(username: 'alonso', first_name: 'Alonso', last_name: 'O', password: 'password')
# User.create(username: 'diana', first_name: 'Diana', last_name: 'L', password: 'password')
# User.create(username: 'faizan', first_name: 'Faizan', last_name: 'I', password: 'password')
# User.create(username: 'jessy', first_name: 'Jessy', last_name: 'H', password: 'password')
# User.create(username: 'kate', first_name: 'Kate', last_name: 'K', password: 'password')
# User.create(username: 'khaled', first_name: 'Khaled', last_name: 'K', password: 'password')
# User.create(username: 'matt', first_name: 'Matt', last_name: 'P', password: 'password')
# User.create(username: 'mica', first_name: 'Micaela', last_name: 'R', password: 'password')
# User.create(username: 'naomi', first_name: 'Naomi', last_name: 'K', password: 'password')
# User.create(username: 'nate', first_name: 'Nate', last_name: 'C', password: 'password')
# User.create(username: 'nicky', first_name: 'Nicky', last_name: 'D', password: 'password')
# User.create(username: 'richie', first_name: 'Richard', last_name: 'T', password: 'password')
# User.create(username: 'tali', first_name: 'Tali', last_name: 'S', password: 'password')
# User.create(username: 'tony', first_name: 'Tony', last_name: 'C', password: 'password')
# User.create(username: 'victoria', first_name: 'Victoria', last_name: 'M', password: 'password')
# User.create(username: 'will', first_name: 'Will', last_name: 'S', password: 'password')

# websites = [
#   {
#     url: 'https://www.factcheck.org/2019/05/video-bidens-false-claim-on-tax-cuts/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'https://www.factcheck.org/',
#     root_url: 'https://www.factcheck.org/'
#   },
#   {
#     url: 'http://notcnn.com/fake_url1',
#     root_url: 'http://notcnn.com'
#   },
#   {
#     url: 'http://notcnn.com/fakeurl2',
#     root_url: 'http://notcnn.com'
#   },
#   {
#     url: 'http://notcnn.com/fakeurl1',
#     root_url: 'http://notcnn.com'
#   },
#   {
#     url: 'http://notfoxnews.com/fakeurl2',
#     root_url: 'http://notfoxnews.com/'
#   },
#   {
#     url: 'http://notfoxnews.com/fakewebsite2',
#     root_url: 'http://notfoxnews.com/'
#   },
#   {
#     url: 'http://notbreitbart.com/fake',
#     root_url: 'http://notbreitbart.com/'
#   }
# ]
#
# websites.each { |website| Website.create(website) }

#TODO: Add img_url to trumpets

# trumpets = [
#   {
#     summary: `Biden’s False Claim on Tax Cuts`,
#     content: `In this week’s fact-checking video, CNN’s Jake Tapper examines a false claim by former Vice President Joe Biden that “all of” the tax cuts signed into law by President Donald Trump “went to folks at the top and corporations that pay no taxes.”`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/biden.png'
#   },
#   {
#     summary: `Barr’s Testimony, In Context`,
#     content: `In testifying about the special counsel’s report on the investigation into Russian interference in the 2016 presidential campaign, Attorney General William Barr made statements that lacked context or didn’t tell the whole story.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/side-barr.png'
#   },
#   {
#     summary: `Did Barr Mislead Congress?`,
#     content: `Democrats claim Attorney General William Barr misled Congress last month when asked if he was aware of concerns that special counsel Robert S. Mueller’s team may have had with his March 24 memo summarizing the Mueller report. We’ll lay out the facts on the matter.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/Barr_May-1-hearing-200x200.png'
#   },
#   {
#     summary: `Trump’s Deceptive Arms Trade Treaty Argument`,
#     content: `In announcing that he will withdraw the U.S. from the United Nations Arms Trade Treaty, President Donald Trump falsely claimed that under the international agreement, the U.S. would allow “foreign bureaucrats to trample on your Second Amendment freedom.”`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/gunshopping.jpg'
#   },
#   {
#     summary: `The Preexisting Conditions Debate Isn’t Over`,
#     content: `Acting White House Chief of Staff Mick Mulvaney said that all of the congressional Republican health care plans had “covered preexisting conditions,” adding that “the debate about preexisting conditions is over.” But the protections in the 2017 plans were not as comprehensive as those in the ACA.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/health-care.png'
#   },
#   {
#     summary: `Ocasio-Cortez Gets FDR History Lesson Wrong`,
#     content: `At a town hall meeting on the Green New Deal, Rep. Alexandria Ocasio-Cortez got her history wrong when she was asked what lessons she learned from President Franklin D. Roosevelt’s New Deal.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/FDR-portrait.png'
#   },
#   {
#     summary: `Larry Kudlow’s Revenue Deception`,
#     content: `On the day the Trump administration released its fiscal 2020 budget, White House economic adviser Larry Kudlow misleadingly claimed that “overall revenues are up about 10 percent.” In fact, federal revenues are down since the Republican tax cuts became law.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: ''
#   },
#   {
#     summary: `The Facts on the ‘Green New Deal’`,
#     content: `We explain what the Green New Deal includes — and doesn’t — and why there is confusion over some of the,
#     content.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/GND_banner-200x200.jpg'
#   },
#   {
#     summary: `Kamala Harris Mistweet on ‘Tax Hike’`,
#     content: `Sen. Kamala Harris, a declared candidate for president, cited preliminary IRS tax refund data for 2018 to criticize the Tax Cuts and Jobs Act as “a middle-class tax hike.” That’s a misreading of the data.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/senkamalaharris2-200x200.jpg'
#   },
#   {
#     summary: `Trump Is Wrong About Fact-Checkers`,
#     content: `President Trump falsely suggested that fact-checkers didn’t hold then-President Barack Obama accountable for his false promise that if you like your health care plan or your doctor, you can keep them under the Affordable Care Act. We wrote as far back as 2009 that Obama couldn’t make that promise to everyone.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/Obama_signing-150x150.png'
#   },
#   {
#     summary: `Did the Uninsured Increase by 7 Million`,
#     content: `Democrats have embraced a new talking point: “7 million Americans have become uninsured” under President Donald Trump. That’s backed up by a Gallup survey. So far, one other measure has picked up a statistical change in the uninsured rate, but others haven’t. We’ll go through the numbers.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/health-care-image2.png'
#   },
#   {
#     summary: `Sanders’ ‘Fact-Check’ Video Distorts Facts`,
#     content: `A “fact-check” video posted on Sen. Bernie Sanders’ official social media accounts misrepresents employment data in an attempt to prove President Donald Trump “wrong” about the economy. The data actually show employment continues to improve under Trump.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/sanderssotufactcheckimage.jpg'
#   },
#   {
#     summary: `Giuliani’s Obstruction Distortions`,
#     content: `In an interview about the Mueller report, Rudy Giuliani, President Donald Trump’s personal attorney, distorted the facts in repeatedly making the case that there was “no obstruction” by Trump.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/Giuliani.png'
#   },
#   {
#     summary: `Debunking Mueller’s ‘Conflicts’`,
#     content: `The Russia report released April 18 contradicts President Donald Trump’s claims that special counsel Robert Mueller had two conflicts of interest that prevented him from conducting an impartial investigation.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/golfball.jpg'
#   },
#   {
#     summary: `What the Mueller Report Says About Obstruction`,
#     content: `In the hours after the public release of the redacted report from special counsel Robert S. Mueller, President Donald Trump took to Twitter with a message that reads, in part, “NO OBSTRUCTION!” That’s not at all what the Mueller report says, though.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/robertsmuelleriii-200x200.jpg'
#   },
#   {
#     summary: `What the Mueller Report Says About Russian Contacts`,
#     content: `The special counsel investigation “established multiple links between Trump Campaign officials and individuals tied to the Russian government.” But it “did not establish that the Campaign coordinated or conspired with the Russian government in its election-interference activities.”`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/trumpandputinhelsinki.jpg'
#   },
#   {
#     summary: `Jay Inslee’s Green Jobs Claim`,
#     content: `In an op-ed and at a town hall, Washington Gov. Jay Inslee has claimed that the top two fastest-growing jobs in the United States are in clean energy: solar photovoltaic installers and wind turbine technicians. That’s not the case — at least not yet.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/solar-panel-array-1591359_1280-150x150.jpg'
#   },
#   {
#     summary: `Conway Overstates Economic Growth`,
#     content: `The U.S. does not currently have economic “growth over 4 percent,” as White House counselor Kellyanne Conway claimed recently.`,
#     trumpet_type: 'Fact check',
#     website_id: nil,
#     img_url: 'https://cdn.factcheck.org/UploadedFiles/Conway.jpg'
#   }
# ]



# (
#   summary: ``,
#   content: ``,
#   trumpet_type: 'Fact check',
#   url: '',
#   root_url: '',
#   img_url: ''
# }
