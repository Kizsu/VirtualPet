typedef struct
{
    int health, hunger, thirst, maxhealth, maxhunger, maxthirst;
    char name[17];
} pet_t;

pet_t* init_pet(int maxhealth, int maxthirst, int maxhunger);

int give_water_pet(pet_t* pet);
int feed_pet(pet_t* pet);
int heal_pet(pet_t* pet);
