require './lib/organize_file'

# selfie.jpg, Malang, 20100101341509
# abdul.png, Surabaya, 20090101140815
# Temanteman.png, Malang, 20130905071413
# Eiffel.jpg, Balikpapan, 20150723030802
# pisatower.jpg, Balikpapan, 20150722235959
# arif.ipg, Surabaya, 20150805030200
# bismalam.png, Balikpapan, 20150911120000
# batu.jpg, Malang, 20130906154022
# a.png, Malang, 20160513133300
# b.jpg, Malang, 20160102151222
# c.jpg, Malang, 20160102143430
# d.jpg, Malang, 20160102151501
# e.png, Malang, 20160102094909
# f.png, Malang, 20160102100533
# g.jpg, Malang, 20160229221311

# Pertanyaan:
# Silahkan buat algoritma untuk melakukan sort dan mengkategorikan nama file baru
# untuk file file yang berasal dari log di atas. Kategorinya harus berdasarkan nama kota
# yang tersedia dan sesuai urutan waktunya.

# Result
# Malang02.jpg
# Surabaya1.png
# Malang01.png
# Balikpapan2.jpg
# Balikpapan1.jpg
# Surabaya2.jpg
# Balikpapan3.jpg
# Malang03.jpg
# Malang09.jpg
# Malang07.jpg
# Malang06.jpg
# Malang08.jpg
# Malang04.jpg
# Malang05.jpg
# Malang10.jpg

context 'when passed "log file" must be sorted base on date' do
  let(:log_files) {
    [
      ['selfie.jpg', 'Malang', '2010-01-01'],
      ['abdul.png', 'Surabaya', '2009-01-01'],
      ['Temanteman.png', 'Malang', '2013-09-05'],
      ['Eiffel.jpg', 'Balikpapan', '2015-07-23'],
      ['pisatower.jpg', 'Balikpapan', '2015-07-22'],
      ['arif.jpg', 'Surabaya', '2015-08-05'],
      ['bismalam.png', 'Balikpapan', '2015-09-11'],
      ['batu.jpg', 'Malang', '2013-09-06'],
      ['a.png', 'Malang', '2016-05-13'],
      ['b.jpg', 'Malang', '2016-01-02'],
      ['c.jpg', 'Malang', '2016-01-02'],
      ['d.jpg', 'Malang', '2016-01-02'],
      ['e.png', 'Malang', '2016-01-02'],
      ['f.png', 'Malang', '2016-01-02'],
      ['g.jpg', 'Malang', '2016-02-29']
    ]
  }

  let(:sorted_files) {
    [
      'Surabaya01.png',
      'Malang01.jpg',
      'Malang02.png',
      'Malang03.jpg',
      'Balikpapan01.jpg',
      'Balikpapan02.jpg',
      'Surabaya02.jpg',
      'Balikpapan03.png',
      'Malang04.jpg',
      'Malang05.png',
      'Malang06.png',
      'Malang07.jpg',
      'Malang08.jpg',
      'Malang09.jpg',
      'Malang10.png'
    ]
  }

  describe '#organize_file' do
    it 'returns sorted file' do
      expect(organize_file(log_files)).to eq(sorted_files)
    end
  end
end
