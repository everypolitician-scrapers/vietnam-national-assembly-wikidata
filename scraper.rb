#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

names = WikiData::Category.new('Thể loại:Đại biểu Quốc hội Việt Nam khóa 13', 'vi').member_titles
ids = EveryPolitician::Wikidata.wdq('claim[39:17593571]')

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { vi: names }, output: false)
