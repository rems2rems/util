module.exports = (day) ->
    day.setHours(0, 0, 0)  
    day.setDate(day.getDate() + 4 - (day.getDay() || 7))
    yearStart = new Date(day.getFullYear(), 0, 1)
    console.log yearStart.getFullYear()
    return Math.ceil((((day - yearStart) / 86400000) + 1) / 7)