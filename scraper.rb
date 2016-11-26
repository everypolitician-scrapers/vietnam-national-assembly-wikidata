#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

names = WikiData::Category.new('Thể loại:Đại biểu Quốc hội Việt Nam khóa 13', 'vi').member_titles

sparq = 'SELECT ?item WHERE { ?item wdt:P39 wd:Q%s . }'
ids = EveryPolitician::Wikidata.sparql(sparq % 17593571)
raise "No ids" if ids.empty?

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { vi: names })
