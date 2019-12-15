const std = @import("std");
const Buffer = std.Buffer;
const io = std.io;
const allocator = std.heap.page_allocator;

fn READ(input: []const u8) []const u8 {
    return input;
}

fn EVAL(input: []const u8) []const u8 {
    return input;
}

fn PRINT(input: []const u8) []const u8 {
    return input;
}

fn rep(input: []const u8) []const u8 {
    return PRINT(EVAL(READ(input)));
}

pub fn main() !void {
    const stdout = &io.getStdOut().outStream().stream;

    while (true) {
        try stdout.print("user> ", .{});

        var buffer = try Buffer.init(allocator, "");
        defer buffer.deinit();

        const input = io.readLine(&buffer) catch |err| switch (err) {
            error.EndOfStream => break,
            else => return err,
        };

        const output = rep(input);
        try stdout.print("{}\n", .{output});
    }
}
