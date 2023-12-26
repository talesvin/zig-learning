const std = @import("std");
const algos = @import("algos.zig");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    // binary search
    const arr = [_]i16{ 1, 3, 5, 7, 9, 10, 11 };
    const tgt_index = algos.binary_search(i16, 10, &arr);
    try stdout.print("Index:{?}, Value:{}\n", .{ tgt_index, arr[tgt_index.?] });

    // reverse string
    const string: []const u8 = "Ziggy";
    var buffer: [string.len]u8 = undefined;
    const reversed_str = algos.reverse_string(&buffer, string);
    try stdout.print("Reversed String: {s}\n", .{reversed_str});

    // sort array
    var unsorted_arr = [_]u16{ 9, 3, 5, 1, 2, 4, 6, 8, 7 };
    try algos.sort_array(u16, &unsorted_arr);
    for (unsorted_arr) |e| {
        try stdout.print("{} ", .{e});
    }
}
