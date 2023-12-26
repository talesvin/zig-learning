const std = @import("std");

/// print num example
pub fn print_num(num: i16) !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Number: {}", .{num});
}
