import path from 'path';
import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  experimental: {
    optimizePackageImports: ["@chakra-ui/react"],
  },
  webpack: (config) => {
    // library フォルダを @library として解決
    config.resolve.alias["@library"] = path.resolve(__dirname, "../../library")
    return config
  },
};

export default nextConfig;
