Feature: 分發午餐
	Scenario: 全員總機
		Given 扛爺收到11個總機便當
		When 全員到齊
		Then 扛爺發10個總機便當給大家
		And 扛爺自己留1份 

	Scenario: 總機+愛心
		Given 扛爺收到10個總機便當, 1個愛心便當
		When 全部的人到齊
		Then 扛爺發10個總機便當給大家
		And 扛爺自己留1份愛心便當
