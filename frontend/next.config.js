/**
 * Next.js Configuration for Windows: disables Turbopack, forces Webpack, enables React strict mode,
 * supports local images, and is compatible with TailwindCSS and Prisma.
 * Copy-paste ready for Next.js 16.1.4+
 */

const isWindows = process.platform === 'win32';

/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  // Disable Turbopack and force Webpack on Windows
  ...(isWindows && {
    experimental: {
      turbo: false,
      // fallback to webpack
    },
    webpack: (config, { isServer }) => {
      // You can customize webpack config here if needed
      return config;
    },
  }),
  // Image config for local images
  images: {
    unoptimized: true,
  },
};

module.exports = nextConfig;
