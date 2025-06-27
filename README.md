# APE - Advanced Physics Engine

A high-performance physics engine written in Zig, designed to handle everything from simple 2D games to complex 3D simulations.

## Why Another Physics Engine?

I got tired of dealing with C++ physics libraries that were either too complex, had weird APIs, or didn't play nice with modern tooling. Zig's safety features and performance characteristics make it perfect for physics simulation where you need both speed and reliability.

## Current Status: Early Development

This is very much a work in progress. Right now I'm building the foundation - math library, basic collision detection, that sort of thing. Don't expect to simulate fluids just yet.

## Goals

- **Fast**: Should handle thousands of objects without breaking a sweat
- **Safe**: No mysterious crashes from memory issues
- **Flexible**: Works for 2D indie games and 3D scientific simulations
- **Clean**: APIs that actually make sense to use

## Planned Features

### Core Math & Utilities
- [x] Project structure
- [ ] Vector math (Vec2, Vec3, Vec4)
- [ ] Matrix operations (Mat3, Mat4)
- [ ] Quaternions for rotations
- [ ] SIMD optimizations

### Collision Detection
- [ ] Basic shapes (sphere, box, capsule)
- [ ] Broad phase (spatial hashing, BVH)
- [ ] Narrow phase (SAT, GJK/EPA)
- [ ] Continuous collision detection

### Rigid Body Dynamics
- [ ] Integration (Verlet, RK4)
- [ ] Constraint solving
- [ ] Joints and springs
- [ ] Sleeping and islands

### Advanced Features
- [ ] Particle systems
- [ ] Soft body simulation
- [ ] Fluid dynamics
- [ ] Multithreading support

## Building

```bash
zig build
```

## Running Tests

```bash
zig build test
```

## License

MIT - Use it however you want, just don't blame me if your simulation explodes.

## Contributing

Still figuring out the architecture, so hold off on major PRs for now. Bug reports and suggestions are always welcome though.
