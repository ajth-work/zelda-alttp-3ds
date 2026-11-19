#include "journal_data.h"
#include "types.h"
#include "variables.h"
#include "zelda_rtl.h"
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdint.h>
#include <stdbool.h>

typedef struct { const char *name, *group; int16_t sprite_id; } JournalEntry;
static const JournalEntry kCharacters[JOURNAL_CHARACTER_COUNT] = {
  {"Link", "CHARACTERS", -1},
  {"Princess Zelda", "CHARACTERS", 118},
  {"Agahnim", "CHARACTERS", 122},
  {"Ganon", "CHARACTERS", 214},
  {"Maiden One", "CHARACTERS", -1},
  {"Maiden Two", "CHARACTERS", -1},
  {"Maiden Three", "CHARACTERS", -1},
  {"Maiden Four", "CHARACTERS", -1},
  {"Maiden Five", "CHARACTERS", -1},
  {"Maiden Six", "CHARACTERS", -1},
  {"Link's Uncle", "CHARACTERS", -1},
  {"Sahasrahla", "CHARACTERS", 22},
  {"Aginah", "CHARACTERS", -1},
  {"Loyal Sage", "CHARACTERS", -1},
  {"Lost Old Man", "CHARACTERS", 173},
  {"Flute Boy", "CHARACTERS", 46},
  {"Flute Boy's Father", "CHARACTERS", -1},
  {"King Zora", "CHARACTERS", 82},
  {"Kiki the monkey", "CHARACTERS", 182},
  {"Catfish", "CHARACTERS", 192},
  {"Mad Batter", "CHARACTERS", -1},
  {"Bug-Catching Kid", "CHARACTERS", -1},
  {"Dwarven Swordsmiths", "CHARACTERS", 26},
  {"Syrup the witch", "CHARACTERS", 54},
  {"Bomb Shopkeeper", "CHARACTERS", 181},
  {"Average Middle-Aged Man", "CHARACTERS", -1},
  {"Man in Thieves' Den", "CHARACTERS", -1},
  {"Sahasrahla's Wife", "CHARACTERS", 120},
  {"Sahasrahla's Grandson", "CHARACTERS", -1},
  {"Running Man", "CHARACTERS", 116},
  {"Sweeping Lady", "CHARACTERS", 42},
  {"Twin Lumberjacks", "CHARACTERS", 44},
  {"Quarreling Brothers", "CHARACTERS", 50},
  {"Bully / Bully's Friend", "CHARACTERS", 185},
  {"Venus", "CHARACTERS", -1},
  {"Waterfall of Wishing Fairy", "CHARACTERS", -1},
  {"Cursed Fairy", "CHARACTERS", -1},
  {"Great Fairy", "CHARACTERS", -1},
  {"Talking Trees", "CHARACTERS", -1},
  {"15-Second Game Operators", "CHARACTERS", -1},
  {"Alarmed Villager", "CHARACTERS", -1},
  {"Street Merchant", "CHARACTERS", -1},
  {"Camper", "CHARACTERS", -1},
  {"Dark World Shopkeepers", "CHARACTERS", -1},
  {"Digging Game Operator", "CHARACTERS", -1},
  {"Duck (the Flute Boy's duck - fast travel itself)", "CHARACTERS", -1},
  {"Fortune Teller (Light and Dark World versions)", "CHARACTERS", -1},
  {"Game of Chance Operators", "CHARACTERS", -1},
  {"Ghostly Proprietor", "CHARACTERS", -1},
  {"Hooded Shopkeeper", "CHARACTERS", -1},
  {"Human Cucco (Dark World)", "CHARACTERS", -1},
  {"Kakariko Inn Patron", "CHARACTERS", -1},
  {"Kakariko Storyteller", "CHARACTERS", -1},
  {"Pikku (character - also an enemy type in the bestiary list)", "CHARACTERS", -1},
  {"Soldier (friendly NPC version)", "CHARACTERS", -1},
  {"Storytelling Bird", "CHARACTERS", -1},
  {"Storytelling Hand", "CHARACTERS", -1},
  {"Storytelling Insect", "CHARACTERS", -1},
  {"Storytelling Octopus", "CHARACTERS", -1},
  {"Storytelling Tree (the five storytelling creatures share a Dark World cave)", "CHARACTERS", -1},
  {"Thief (character).", "CHARACTERS", -1},
  {"Generic townsfolk (location-numbered placements)", "CHARACTERS", -1},
  {"Reference entry 63 (UNMAPPED - source count mismatch)", "CHARACTERS", -1},
};

#define JOURNAL_BESTIARY_COUNT 117
static const JournalEntry kBestiary[JOURNAL_BESTIARY_COUNT] = {
  {"Armos", "LIGHT WORLD OVERWORLD", 81},
  {"Bee", "LIGHT WORLD OVERWORLD", -1},
  {"Bomb Knight", "LIGHT WORLD OVERWORLD", -1},
  {"Boulder", "LIGHT WORLD OVERWORLD", -1},
  {"Bow Soldier", "LIGHT WORLD OVERWORLD", 70},
  {"Buzz Blob", "LIGHT WORLD OVERWORLD", 13},
  {"Crow", "LIGHT WORLD OVERWORLD", 0},
  {"Cucco", "LIGHT WORLD OVERWORLD", 11},
  {"Cukeman", "LIGHT WORLD OVERWORLD", -1},
  {"Deadrock", "LIGHT WORLD OVERWORLD", 39},
  {"Geldman", "LIGHT WORLD OVERWORLD", 76},
  {"Golden Bee", "LIGHT WORLD OVERWORLD", -1},
  {"Hoarder", "LIGHT WORLD OVERWORLD", 23},
  {"Keese", "LIGHT WORLD OVERWORLD", 111},
  {"Mini-Moldorm", "LIGHT WORLD OVERWORLD", 24},
  {"Octoballoon", "LIGHT WORLD OVERWORLD", 15},
  {"Octorok", "LIGHT WORLD OVERWORLD", 8},
  {"Poe", "LIGHT WORLD OVERWORLD", 25},
  {"Rat", "LIGHT WORLD OVERWORLD", 109},
  {"River Zora", "LIGHT WORLD OVERWORLD", -1},
  {"Sand Crab", "LIGHT WORLD OVERWORLD", 88},
  {"Slime", "LIGHT WORLD OVERWORLD", -1},
  {"Green Soldier", "LIGHT WORLD OVERWORLD", 65},
  {"Spear Knight", "LIGHT WORLD OVERWORLD", -1},
  {"Spear Soldier", "LIGHT WORLD OVERWORLD", 69},
  {"Spear Throwing Soldier", "LIGHT WORLD OVERWORLD", -1},
  {"Sword Soldier", "LIGHT WORLD OVERWORLD", -1},
  {"Tektite", "LIGHT WORLD OVERWORLD", 201},
  {"Thief", "LIGHT WORLD OVERWORLD", 196},
  {"Toppo", "LIGHT WORLD OVERWORLD", 77},
  {"Vulture", "LIGHT WORLD OVERWORLD", 1},
  {"Blazing Bat", "DARK WORLD OVERWORLD", -1},
  {"Bone Cucco", "DARK WORLD OVERWORLD", -1},
  {"Chasupa", "DARK WORLD OVERWORLD", -1},
  {"Dacto", "DARK WORLD OVERWORLD", -1},
  {"Hinox", "DARK WORLD OVERWORLD", 17},
  {"Hyu", "DARK WORLD OVERWORLD", -1},
  {"Ku", "DARK WORLD OVERWORLD", -1},
  {"Like Like", "DARK WORLD OVERWORLD", -1},
  {"Lynel", "DARK WORLD OVERWORLD", 208},
  {"Moblin", "DARK WORLD OVERWORLD", 18},
  {"Pikit", "DARK WORLD OVERWORLD", 170},
  {"Pikku", "DARK WORLD OVERWORLD", -1},
  {"Ropa", "DARK WORLD OVERWORLD", 34},
  {"Slarok", "DARK WORLD OVERWORLD", -1},
  {"Snap Dragon", "DARK WORLD OVERWORLD", 14},
  {"Stal", "DARK WORLD OVERWORLD", 211},
  {"Swamola", "DARK WORLD OVERWORLD", 207},
  {"Taros", "DARK WORLD OVERWORLD", -1},
  {"Zirro", "DARK WORLD OVERWORLD", 168},
  {"Anti-Fairy", "LIGHT WORLD DUNGEONS", 21},
  {"Ball", "LIGHT WORLD DUNGEONS", -1},
  {"Ball and Chain Soldier", "LIGHT WORLD DUNGEONS", 106},
  {"Beamos", "LIGHT WORLD DUNGEONS", 97},
  {"Bumper", "LIGHT WORLD DUNGEONS", 147},
  {"Devalant", "LIGHT WORLD DUNGEONS", -1},
  {"Eyegore", "LIGHT WORLD DUNGEONS", 131},
  {"Flying Tile", "LIGHT WORLD DUNGEONS", -1},
  {"Giant Ball", "LIGHT WORLD DUNGEONS", -1},
  {"Guruguru Bar", "LIGHT WORLD DUNGEONS", -1},
  {"Hardhat Beetle", "LIGHT WORLD DUNGEONS", 38},
  {"Red Kodongo", "LIGHT WORLD DUNGEONS", -1},
  {"Leever", "LIGHT WORLD DUNGEONS", 113},
  {"Popo", "LIGHT WORLD DUNGEONS", 78},
  {"Rope", "LIGHT WORLD DUNGEONS", 110},
  {"Spark", "LIGHT WORLD DUNGEONS", 91},
  {"Stalfos", "LIGHT WORLD DUNGEONS", 124},
  {"Sword Knight", "LIGHT WORLD DUNGEONS", -1},
  {"Wall Turret", "LIGHT WORLD DUNGEONS", 102},
  {"Arrgi", "DARK WORLD DUNGEONS", 141},
  {"Babusu", "DARK WORLD DUNGEONS", -1},
  {"Bari", "DARK WORLD DUNGEONS", 35},
  {"Biri", "DARK WORLD DUNGEONS", -1},
  {"Blade Trap", "DARK WORLD DUNGEONS", -1},
  {"Buzz", "DARK WORLD DUNGEONS", -1},
  {"Chain Chomp", "DARK WORLD DUNGEONS", 202},
  {"Fireball Cannon", "DARK WORLD DUNGEONS", -1},
  {"Freezor", "DARK WORLD DUNGEONS", 161},
  {"Giant Blade Trap", "DARK WORLD DUNGEONS", -1},
  {"Gibdo", "DARK WORLD DUNGEONS", 139},
  {"Gibo", "DARK WORLD DUNGEONS", 195},
  {"Goriya", "DARK WORLD DUNGEONS", -1},
  {"Helmasaur", "DARK WORLD DUNGEONS", -1},
  {"Hokkubokku", "DARK WORLD DUNGEONS", -1},
  {"Hover", "DARK WORLD DUNGEONS", 129},
  {"Green Kodongo", "DARK WORLD DUNGEONS", -1},
  {"Laser Eye", "DARK WORLD DUNGEONS", 149},
  {"Medusa", "DARK WORLD DUNGEONS", 197},
  {"Mole", "DARK WORLD DUNGEONS", -1},
  {"Pengator", "DARK WORLD DUNGEONS", 153},
  {"Pirogusu", "DARK WORLD DUNGEONS", 148},
  {"Rabbit Beam", "DARK WORLD DUNGEONS", 209},
  {"Sluggula", "DARK WORLD DUNGEONS", 32},
  {"Spiked Roller", "DARK WORLD DUNGEONS", -1},
  {"Stalfos Knight", "DARK WORLD DUNGEONS", 145},
  {"Skullrope", "DARK WORLD DUNGEONS", -1},
  {"Terrorpin", "DARK WORLD DUNGEONS", 142},
  {"Wallmaster", "DARK WORLD DUNGEONS", 144},
  {"Kyameron", "DARK WORLD DUNGEONS", 154},
  {"Winder", "DARK WORLD DUNGEONS", -1},
  {"Wizzrobe", "DARK WORLD DUNGEONS", 155},
  {"Zazak", "DARK WORLD DUNGEONS", -1},
  {"Zol", "DARK WORLD DUNGEONS", -1},
  {"Zoro", "DARK WORLD DUNGEONS", 156},
  {"Armos Knights", "BOSSES (STORY ORDER)", 83},
  {"Lanmolas", "BOSSES (STORY ORDER)", 84},
  {"Moldorm", "BOSSES (STORY ORDER)", 9},
  {"Agahnim", "BOSSES (STORY ORDER)", 122},
  {"Helmasaur King", "BOSSES (STORY ORDER)", 146},
  {"Arrghus", "BOSSES (STORY ORDER)", 140},
  {"Mothula", "BOSSES (STORY ORDER)", 136},
  {"Blind the Thief", "BOSSES (STORY ORDER)", 206},
  {"Kholdstare", "BOSSES (STORY ORDER)", 162},
  {"Vitreous", "BOSSES (STORY ORDER)", 189},
  {"Trinexx", "BOSSES (STORY ORDER)", 203},
  {"Agahnim (rematch)", "BOSSES (STORY ORDER)", -1},
  {"Ganon", "BOSSES (STORY ORDER)", 214},
};

static const int16_t kCharacterBySprite[243] = {
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 11, -1,
  -1, -1, 22, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, 30, -1, 31, -1, 15, -1,
  -1, -1, 32, -1, -1, -1, 23, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 17, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, 29, -1, 1, -1,
  27, -1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, 14, -1, -1, -1, -1, -1, -1,
  -1, 24, 18, -1, -1, 33, -1, -1, -1, -1, -1, -1,
  19, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 3, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1,
};
static const int16_t kBestiaryBySprite[243] = {
  6, 30, -1, -1, -1, -1, -1, -1, 16, 106, 16, 7,
  -1, 5, 45, 15, -1, 35, 40, -1, -1, 50, -1, 12,
  14, 17, -1, -1, -1, -1, -1, -1, 92, -1, 43, 71,
  71, -1, 60, 9, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, 22, -1, -1, -1, 24, 4, 22,
  24, 22, -1, 22, 10, 29, 63, -1, -1, 0, -1, 104,
  105, -1, -1, -1, 20, -1, -1, 65, -1, -1, -1, -1,
  -1, 53, -1, -1, -1, -1, 68, -1, -1, -1, 52, -1,
  -1, 18, 64, 13, -1, 62, -1, -1, -1, -1, -1, -1,
  -1, -1, 107, -1, 66, -1, -1, -1, -1, 84, -1, 56,
  56, 66, -1, -1, 110, -1, -1, 79, 109, 69, 96, -1,
  97, 94, 108, 54, 90, 86, -1, -1, -1, 89, 98, 100,
  103, -1, -1, -1, -1, 77, 112, -1, -1, -1, -1, 66,
  49, -1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, 113, -1, -1,
  -1, -1, -1, 80, 28, 87, -1, -1, -1, 27, 75, 114,
  -1, -1, 111, 47, 39, 91, -1, 46, -1, -1, 116, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1,
};

typedef struct { uint32_t first_seen, defeats; } JournalRecord;
typedef struct { JournalRecord characters[JOURNAL_CHARACTER_COUNT]; JournalRecord bestiary[JOURNAL_BESTIARY_COUNT]; } JournalSlot;
typedef struct { uint32_t magic, version; JournalSlot slots[3]; } JournalFile;
#define JOURNAL_MAGIC 0x4A4E4C35u
static JournalFile s_data;
static uint8_t s_death_latched[16];
static bool s_loaded;
static char s_loaded_path[256];

static int active_slot(void) {
  if (srm_var1 >= 2 && srm_var1 <= 6 && !(srm_var1 & 1)) return (srm_var1 >> 1) - 1;
  return 0;
}
static void load_data(void) {
  char path[256]; ZeldaFormatSavePath("saves/journal_data", path, sizeof(path));
  if (s_loaded && strcmp(path, s_loaded_path) == 0) return;
  memset(s_death_latched, 0, sizeof(s_death_latched));
  memset(&s_data, 0, sizeof(s_data));
  s_data.magic = JOURNAL_MAGIC; s_data.version = 1;
  snprintf(s_loaded_path, sizeof(s_loaded_path), "%s", path);
  FILE *f = fopen(path, "rb");
  if (f) { JournalFile disk; size_t n = fread(&disk, 1, sizeof(disk), f); fclose(f);
    if (n == sizeof(disk) && disk.magic == JOURNAL_MAGIC && disk.version == 1) s_data = disk;
  }
  s_loaded = true;
}
static void save_data(void) {
  char path[256], tmp[272];
  if (!s_loaded) load_data();
  snprintf(path, sizeof(path), "%s", s_loaded_path);
  snprintf(tmp, sizeof(tmp), "%s.tmp", path);
  FILE *f = fopen(tmp, "wb"); if (!f) return;
  size_t n = fwrite(&s_data, 1, sizeof(s_data), f); int ok = fflush(f) == 0; ok = fclose(f) == 0 && ok;
  if (n != sizeof(s_data) || !ok) { remove(tmp); return; }
  if (rename(tmp, path) != 0) { remove(path); (void)rename(tmp, path); }
}
static void record_seen(JournalRecord *r) {
  if (r->first_seen) return;
  time_t now = time(NULL); if (now <= 0) return;
  r->first_seen = (uint32_t)now; save_data();
}
int JournalData_CharacterCount(void) { return JOURNAL_CHARACTER_COUNT; }
int JournalData_BestiaryCount(void) { return JOURNAL_BESTIARY_COUNT; }
const char *JournalData_CharacterName(int i) { return i >= 0 && i < JOURNAL_CHARACTER_COUNT ? kCharacters[i].name : ""; }
const char *JournalData_CharacterGroup(int i) { return i >= 0 && i < JOURNAL_CHARACTER_COUNT ? kCharacters[i].group : ""; }
const char *JournalData_BestiaryName(int i) { return i >= 0 && i < JOURNAL_BESTIARY_COUNT ? kBestiary[i].name : ""; }
const char *JournalData_BestiaryGroup(int i) { return i >= 0 && i < JOURNAL_BESTIARY_COUNT ? kBestiary[i].group : ""; }
int JournalData_CharacterMapped(int i) { return i >= 0 && i < JOURNAL_CHARACTER_COUNT && kCharacters[i].sprite_id >= 0; }
int JournalData_BestiaryMapped(int i) { return i >= 0 && i < JOURNAL_BESTIARY_COUNT && kBestiary[i].sprite_id >= 0; }
uint32_t JournalData_CharacterSeen(int i) { load_data(); return i >= 0 && i < JOURNAL_CHARACTER_COUNT ? s_data.slots[active_slot()].characters[i].first_seen : 0; }
uint32_t JournalData_BestiarySeen(int i) { load_data(); return i >= 0 && i < JOURNAL_BESTIARY_COUNT ? s_data.slots[active_slot()].bestiary[i].first_seen : 0; }
uint32_t JournalData_BestiaryDefeats(int i) { load_data(); return i >= 0 && i < JOURNAL_BESTIARY_COUNT ? s_data.slots[active_slot()].bestiary[i].defeats : 0; }
void JournalData_RecordNpcDialogue(int type) {
  if (type < 0 || type >= 243) return; load_data(); int i = kCharacterBySprite[type];
  if (i >= 0) record_seen(&s_data.slots[active_slot()].characters[i]);
}
void JournalData_ObserveSprite(int slot, int type, int state, int health) {
  if (slot < 0 || slot >= 16) return; load_data();
  if (!state) { s_death_latched[slot] = 0; return; }
  if (type < 0 || type >= 243) return; int i = kBestiaryBySprite[type];
  if (i >= 0) record_seen(&s_data.slots[active_slot()].bestiary[i]);
  int ci = kCharacterBySprite[type]; if (ci >= 0 && (type == 0x7A || type == 0xD6)) record_seen(&s_data.slots[active_slot()].characters[ci]);
  (void)health;
}
void JournalData_RecordEnemyDefeat(int slot, int type) {
  if (slot < 0 || slot >= 16 || type < 0 || type >= 243 || s_death_latched[slot]) return;
  load_data(); int i = kBestiaryBySprite[type]; if (i < 0) return;
  s_death_latched[slot] = 1; JournalRecord *r = &s_data.slots[active_slot()].bestiary[i];
  if (!r->first_seen) { time_t now = time(NULL); if (now > 0) r->first_seen = (uint32_t)now; }
  r->defeats++; save_data();
}
