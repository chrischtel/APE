const std = @import("std");

pub const Vec3 = struct {
    x: f32,
    y: f32,
    z: f32,

    pub fn init(x: f32, y: f32, z: f32) Vec3 {
        return Vec3{ .x = x, .y = y, .z = z };
    }

    pub fn add(self: Vec3, other: Vec3) Vec3 {
        return Vec3{ .x = self.x + other.x, .y = self.y + other.y, .z = self.z + other.z };
    }

    pub fn sub(self: Vec3, other: Vec3) Vec3 {
        return Vec3{ .x = self.x - other.x, .y = self.y - other.y, .z = self.z - other.z };
    }

    pub fn mul(self: Vec3, scalar: f32) Vec3 {
        return Vec3{ .x = self.x * scalar, .y = self.y * scalar, .z = self.z * scalar };
    }

    pub fn div(self: Vec3, scalar: f32) Vec3 {
        // check for null division
        if (scalar == 0) {
            return Vec3{ .x = 0, .y = 0, .z = 0 };
        }
        return Vec3{ .x = self.x / scalar, .y = self.y / scalar, .z = self.z / scalar };
    }

    pub fn cross(self: Vec3, other: Vec3) Vec3 {
        return Vec3{
            .x = self.y * other.z - self.z * other.y,
            .y = self.z * other.x - self.x * other.z,
            .z = self.x * other.y - self.y * other.x,
        };
    }
};
