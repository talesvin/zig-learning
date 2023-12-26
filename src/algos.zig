//! simple algorithms
const std = @import("std");

/// input: buffer that takes string lenght as size, string to be reversed
pub fn reverse_string(buf: []u8, str: []const u8) []u8 {
    var i: usize = str.len;

    for (str) |e| {
        i -= 1;
        buf[i] = e;
    }
    return buf;
}

/// input: type of the array, target value, array (must be sorted)
pub fn binary_search(comptime T: type, target: usize, items: []const T) ?usize {
    var high: usize = items.len - 1;
    var low: usize = 0;
    var mid: usize = undefined;

    while (low <= high) {
        mid = low + (high - low) / 2;
        if (items[mid] == target)
            return mid;
        if (items[mid] > target) high = mid - 1 else low = mid + 1;
    }
}

/// input: type of the array, array to be sorted
pub fn sort_array(comptime T: type, arr: []T) !void {
    var temp: T = 0;
    var outer: usize = 0;
    var inner: usize = 0;

    while (outer < arr.len) : (outer += 1) {
        temp = 0;
        inner = 0;
        while (inner < arr.len - 1) : (inner += 1) {
            if (arr[inner] > arr[inner + 1]) {
                temp = arr[inner + 1];
                arr[inner + 1] = arr[inner];
                arr[inner] = temp;
            }
        }
    }
}
