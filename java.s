 public static void printAddresses(String label, Object... objects) {
    System.out.print(label + ": 0x"); 
        final long i1 = (unsafe.getInt(objects, offset) & 0xFFFFFFFFL) * factor;
        System.out.print(Long.toHexString(i1));
        last = i1;
        for (int i = 1; i < objects.length; i++) {
            final long i2 = (unsafe.getInt(objects, offset + i * 4) & 0xFFFFFFFFL) * factor;
            if (i2 > last)
                System.out.print(", +" + Long.toHexString(i2 - last));
            else
                System.out.print(", -" + Long.toHexString( last - i2));
            last = i2;
        }
        break;
    case 8:
        throw new AssertionError("Not supported");
    }
    System.out.println();