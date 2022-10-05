class Solution:
    def isHappy(self, n: int) -> bool:

        if n < 10:
            if n == 1 or n == 7:
                return True
            else:
                return False
        else:
            array_n = list(map(int, str(int(n))))
            next_n = 0
            for i in range(len(array_n)):
                next_n = next_n + math.pow(array_n[i], 2)
            return Solution().isHappy(next_n)
            