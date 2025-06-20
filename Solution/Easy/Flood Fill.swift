class Solution {

    struct Point: Hashable {
        let r: Int
        let c: Int
    }

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        
        // 1. If start position is already target color, there's no changes
        if image[sr][sc] == color {
            return image
        }

        // 2. Use DFS or BFS 

        let sizeR = image.count
        let sizeC = image[0].count
        let sourceColor = image[sr][sc]

        /// Conveted Image
        var coloredImage = image

        var queue: [Point] = [Point(r: sr, c: sc)]
        var front: Int = 0

        let directions: [(Int, Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

        while queue.count > front {
            let curr = queue[front]
            front += 1

            if coloredImage[curr.r][curr.c] != sourceColor { 
                continue 
            }

            coloredImage[curr.r][curr.c] = color

            for (dr, dc) in directions {
                let nr = curr.r + dr
                let nc = curr.c + dc

                if nr >= 0, nr < sizeR, nc >= 0, nc < sizeC {
                    queue.append(Point(r: nr, c: nc))
                }
            }
        }

        return coloredImage
    }
}