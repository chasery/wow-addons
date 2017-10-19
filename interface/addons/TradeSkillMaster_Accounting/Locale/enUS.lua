-- ------------------------------------------------------------------------------ --
--                           TradeSkillMaster_Accounting                          --
--           http://www.curse.com/addons/wow/tradeskillmaster_accounting          --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster_Accounting Locale - enUS
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/tradeskillmaster_accounting/localization/

local isDebug = false
--[===[@debug@
isDebug = true
--@end-debug@]===]
local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Accounting", "enUS", true, isDebug)
if not L then return end

L["Accounting has not yet collected enough information for this tab. This is likely due to not having recorded enough data points or not seeing any significant fluctuations (over 1k gold) in your gold on hand."] = true
L["Activity Type"] = true
L["All"] = true
L["Amount"] = true
L["Aucs"] = true
L["Average Prices:"] = true
L["Avg Buy"] = true
L["Avg Buy Price"] = true
L["Avg Resale Profit"] = true
L["Avg Sale"] = true
L["Avg Sell Price"] = true
L["Back to Previous Page"] = true
L["Balance"] = true
L[ [=[Below is a graph of the your character's gold on hand over time.

The x-axis is time and goes from %s to %s
The y-axis is thousands of gold.]=] ] = true
L["Bought"] = true
L["Buyer/Seller"] = true
L["Cancelled"] = true
L["Cancelled Since Last Sale:"] = true
L["|cffff0000IMPORTANT:|r When TSM_Accounting last saved data for this realm, it was too big for WoW to handle, so old data was automatically trimmed in order to avoid corruption of the saved variables. The last %s of %s data has been preserved."] = true
L["Character/Guild to Graph"] = true
L["Character to Graph"] = true
L["Clear Old Data"] = true
L["Click for a detailed report on this item."] = true
L["Click this button to permanently remove data older than the number of days selected in the dropdown."] = true
L["Data older than this many days will be deleted when you click on the button to the right."] = true
L["Days:"] = true
L["DD/MM/YY HH:MM"] = true
L["Display Grey Items in Sales"] = true
L["Display Money Transfers"] = true
L["Don't Prompt to Record Trades"] = true
L["Earned Per Day:"] = true
L["Expenses"] = true
L["Expired"] = true
L["Expired Since Last Sale:"] = true
L["Failed Auctions"] = true
L["Failed Since Last Sale"] = true
L["Failed Since Last Sale (Expired/Cancelled):"] = true
L["General Options"] = true
L["Gold Earned:"] = true
L["Gold Spent:"] = true
L["Group"] = true
L["_ Hr _ Min ago"] = true
L["If checked, Money Transfers will be included in income / expense and summary. Accounting will still track these if disabled but will not show them."] = true
L["If checked, poor quality items will be shown in sales data. They will still be included in gold earned totals on the summary tab regardless of this setting"] = true
L["If checked, the average purchase price that shows in the tooltip will be the average price for the most recent X you have purchased, where X is the number you have in your bags / bank / guild vault. Otherwise, a simple average of all purchases will be used."] = true
L["If checked, the number of cancelled auctions since the last sale will show as up as failed auctions in an item's tooltip. if no sales then the total number of cancelled auctions will be shown."] = true
L["If checked, the number of expired auctions since the last sale will show as up as failed auctions in an item's tooltip. if no sales then the total number of expired auctions will be shown."] = true
L[ [=[If checked, the number you have purchased and the average purchase price will show up in an item's tooltip.

Note: Vendor purchases will not be shown.]=] ] = true
L[ [=[If checked, the number you have sold and the average sale price will show up in an item's tooltip.

Note: Vendor sales will not be shown.]=] ] = true
L["If checked, the sale rate will be shown in item tooltips. sale rate is calculated as total sold / (total sold + total expired + total cancelled)."] = true
L["If checked, whenever you buy or sell any quantity of a single item via trade, Accounting will display a popup asking if you want it to record that transaction."] = true
L["If checked, you won't get a popup confirmation about whether or not to track trades."] = true
L["Item Name"] = true
L["Items"] = true
L["Items/Resale Price Format"] = true
L["Last %d Days"] = true
L["Last Purchased:"] = true
L["Last Sold:"] = true
L["Market Value"] = true
L["Market Value Source"] = true
L["Max Buy Price"] = true
L["Max Sell Price"] = true
L["Min Buy Price"] = true
L["Min Sell Price"] = true
L["MM/DD/YY HH:MM"] = true
L["none"] = true
L["None"] = true
L["Other Income"] = true
L["Other Player"] = true
L["Per Item"] = true
L["Player"] = true
L["Player Gold"] = true
L["Profit:"] = true
L["Profit Per Day:"] = true
L["Purchase Data"] = true
L["Purchased (Min/Avg/Max Price):"] = true
L["Purchased (Total Price):"] = true
L["Purchases"] = true
L["Quantity"] = true
L["Quantity Bought:"] = true
L["Quantity Sold:"] = true
L["Rarity"] = true
L["Removed a total of %s old records and %s items with no remaining records."] = true
L["Removed record."] = true
L["Remove Old Data (No Confirmation)"] = true
L["Resale"] = true
L["Revenue"] = true
L["%s ago"] = true
L["Sale Data"] = true
L["Sale Rate:"] = true
L["Sales"] = true
L["Search"] = true
L["Select how you would like prices to be shown in the \"Items\" and \"Resale\" tabs; either average price per item or total value."] = true
L["Select what format Accounting should use to display times in applicable screens."] = true
L["Select where you want Accounting to get market value info from to show in applicable screens."] = true
L["Shift-Right-Click to delete this record."] = true
L["Show cancelled auctions since last sale in item tooltips"] = true
L["Show expired auctions since last sale in item tooltips"] = true
L["Show purchase info in item tooltips"] = true
L["Show sale info in item tooltips"] = true
L["Show Sale Rate in item tooltips"] = true
L["Sold"] = true
L["Sold (Min/Avg/Max Price):"] = true
L["Sold (Total Price):"] = true
L["Source"] = true
L["Spent Per Day:"] = true
L["Stack"] = true
L["Summary"] = true
L["Sum of All Characters/Guilds"] = true
L["There is no purchase data for this item."] = true
L["There is no sale data for this item."] = true
L["Time"] = true
L["Time Format"] = true
L["Timeframe (Days)"] = true
L["Timeframe Filter"] = true
L["Today"] = true
L["Top Buyers:"] = true
L["Top Expense by Gold / Quantity:"] = true
L["Top Income by Gold / Quantity:"] = true
L["Top Item by Gold / Quantity:"] = true
L["Top Sellers:"] = true
L["Total:"] = true
L["Total Buy"] = true
L["Total Buy Price"] = true
L["Total Price"] = true
L["Total Sale"] = true
L["Total Sale Price"] = true
L["Total Spent:"] = true
L["Total Value"] = true
L["Track Sales/Purchases via Trade"] = true
L["TSM_Accounting detected that you just traded %s %s in return for %s. Would you like Accounting to store a record of this trade?"] = true
L["Type"] = true
L["Use Smart Average for Purchase Price"] = true
L["Yesterday"] = true
L[ [=[You can use the options below to clear old data. It is recommened to occasionally clear your old data to keep Accounting running smoothly. Select the minimum number of days old to be removed in the dropdown, then click the button.

NOTE: There is no confirmation.]=] ] = true
L["YY/MM/DD HH:MM"] = true
