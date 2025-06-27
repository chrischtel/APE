//! APE Demo Program
//!
//! This executable demonstrates the capabilities of the APE physics engine.
//! Currently showcases the math module - will expand as more features are added.

const std = @import("std");
const print = std.debug.print;
const ape = @import("ape_lib");

pub fn main() !void {
    print("=== APE - Advanced Physics Engine Demo ===\n\n", .{});

    // Math Module Demo
    print("📐 Math Module Demo:\n", .{});
    demonstrateMath();

    print("\n✅ Demo completed successfully!\n", .{});
    print("💡 Run 'zig build test' to run all unit tests.\n", .{});
}

fn demonstrateMath() void {
    print("  Creating vectors...\n", .{});

    // Create some vectors
    const position = ape.math.Vec2.init(10.0, 5.0);
    const velocity = ape.math.Vec2.init(-2.0, 8.0);

    print("  Position: ({d:.1}, {d:.1})\n", .{ position.x, position.y });
    print("  Velocity: ({d:.1}, {d:.1})\n", .{ velocity.x, velocity.y });

    // Vector operations
    const new_position = position.add(velocity);
    print("  New position after velocity: ({d:.1}, {d:.1})\n", .{ new_position.x, new_position.y });

    const distance = position.sub(new_position).length();
    print("  Distance moved: {d:.2}\n", .{distance});

    // Normalization
    const normalized_velocity = velocity.normalize();
    print("  Normalized velocity: ({d:.3}, {d:.3})\n", .{ normalized_velocity.x, normalized_velocity.y });
    print("  Normalized length: {d:.3}\n", .{normalized_velocity.length()});

    // Dot product (useful for physics calculations)
    const dot = position.dot(velocity);
    print("  Dot product: {d:.2}\n", .{dot});

    // Perpendicular vector (useful for 2D cross products)
    const perp = velocity.perp();
    print("  Perpendicular to velocity: ({d:.1}, {d:.1})\n", .{ perp.x, perp.y });

    // Math utilities
    print("  Interpolating between positions: ", .{});
    for (0..6) |i| {
        const t = @as(f32, @floatFromInt(i)) / 5.0;
        const lerped_x = ape.math.lerp(position.x, new_position.x, t);
        const lerped_y = ape.math.lerp(position.y, new_position.y, t);
        print("({d:.1},{d:.1}) ", .{ lerped_x, lerped_y });
    }
    print("\n", .{});
}

// Tests for the main executable
test "main executable tests" {
    // Just ensure main doesn't crash
    // In a real demo, you might test specific demo functions
}

test "use ape library" {
    // Test that we can use the APE library correctly
    const pos = ape.math.Vec2.init(1.0, 2.0);
    const vel = ape.math.Vec2.init(3.0, 4.0);
    const result = pos.add(vel);

    try std.testing.expectEqual(@as(f32, 4.0), result.x);
    try std.testing.expectEqual(@as(f32, 6.0), result.y);
}

test "legacy add function" {
    // Keep the old test for build system compatibility
    try std.testing.expectEqual(@as(i32, 150), ape.add(100, 50));
}
