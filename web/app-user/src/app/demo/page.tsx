import Sample from "@library/ui-components/Sample"

// export default function Demo() {
//   return (
//     <Sample />
//   )
// }

import { Button, HStack } from "@chakra-ui/react"

export default function Demo() {
  return (
    <HStack>
      <Button>Click me</Button>
      <Button>Click me</Button>
      <Sample />
    </HStack>
  )
}