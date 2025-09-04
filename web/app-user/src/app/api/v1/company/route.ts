import { NextResponse } from 'next/server'

// /api/v1/company
export async function GET() {
  return NextResponse.json({ message: 'user v1 company endpoint' })
}