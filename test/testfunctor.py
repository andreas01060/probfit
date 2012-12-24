import unittest
from probfit import *
from probfit._libstat import integrate1d
class TestFunctor(unittest.TestCase):

    def setUp(self):
        pass

    def test_describe_normal_function(self):
        def f(x,y,z):
            return x+y+z
        d = describe(f)
        self.assertEqual(list(d),['x','y','z'])

    def test_Normalize(self):
        f = ugaussian
        g = Normalized(f,(-1,1))

        norm = integrate1d(f,(-1.,1.),1000,(0.,1.))
        self.assertAlmostEqual(g(1.,0.,1.),f(1.,0.,1.)/norm)

if __name__ == '__main__':
    unittest.main()
