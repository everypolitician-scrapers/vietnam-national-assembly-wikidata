#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

names = WikiData::Category.new('Thể loại:Đại biểu Quốc hội Việt Nam khóa 13', 'vi').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { vi: names }, output: false)
