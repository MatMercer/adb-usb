#ifndef CONFIG_H
#define CONFIG_H

// Uncomment if you have removed the locking mechanism from your caps lock
//#define UNLOCKED_CAPS 1

// Which port and pin to run ADB through. Also needs a 1K pull-up to +5V.
#define ADB_PORT        PORTD
#define ADB_PIN         PIND
#define ADB_DDR         DDRD
#define ADB_DATA_BIT    0

// Swap the positions of Cmd and Option to match modern Mac keyboard layout
#define ADB_SWAP_CMD_OPTION 1

// ADB polling interval in milliseconds. Original Macs used 12ms (83Hz).
// Minimum ~4ms. Lower = less input latency.
#define ADB_POLL_MS 6

#endif
