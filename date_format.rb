# -*- coding: utf-8 -*-
require "date"

# 日付を文字列に変換する
class DateFormat
	def initialize(y, m, d)
		@time = Time.mktime(y, m, d)
		@year = y
		@month = m
		@day = d
	end

	# 年-月-日
	def ymd
		@time.strftime("%y-%m-%d")
	end
	
	# 月-日-年
	def mdy
		@time.strftime("%m-%d-%y")
	end

	# 日-月-年
	def dmy
		@time.strftime("%d-%m-%y")
	end
	
	# 年-月（月の省略名）-日
	def ybd
		@time.strftime("%y-%b-%d")
	end
	
	# 月（月の省略名）-日-年
	def bdy
		@time.strftime("%b-%d-%y")
	end
	
	# 日-月（月の省略名）-年
	def dby
		@time.strftime("%d-%b-%y")
	end
end

# テスト用に記述
date_format = DateFormat.new(2016, 9, 19)
p "ymd:#{date_format.ymd}"
p "mdy:#{date_format.mdy}"
p "dmy:#{date_format.dmy}"
p "ybd:#{date_format.ybd}"
p "bdy:#{date_format.bdy}"
p "dby:#{date_format.dby}"