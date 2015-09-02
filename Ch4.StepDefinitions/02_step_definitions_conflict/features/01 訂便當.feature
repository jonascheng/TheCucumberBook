Feature: 準備Study Group午餐
	Scenario: 全部訂總機便當
		Given 班級人數11人
		When 扛爺訂11份總機
		Then 扛爺收到11個便當

	Scenario: 扛爺吃好料, 其他人吃總機便當
		Given 班級人數11人
		When 扛爺訂10份, C小姐幫扛爺買1份
		Then 扛爺收到11個便當