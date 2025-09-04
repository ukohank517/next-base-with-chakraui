import { NextResponse } from 'next/server'

// /api/v1/company
export async function GET() {
  return NextResponse.json({ message: 'admin v1 company endpoint' })
}