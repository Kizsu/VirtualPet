#include "game.h"

/**
* Render a visible menu to the user
*/
void render_menu(pet_t pet)
{
    clear_terminal();
    if (pet.hunger <= 3)
    {
        printf("\n%s is getting hungry...", pet.name);
    }
    else if (pet.health <= 3)
    {
        printf("\n%s is not feeling too well... maybe love will heal them.", pet.name);
    }
    printf("\n%s is at %d health.", pet.name, pet.health);
    printf("\n%s is at %d hunger.", pet.name, pet.hunger);
    fputs("\n(1) Feed", stdout);
    fputs("\n(2) Pet", stdout);
    fputs("\n(3) Exit", stdout);
}

/**
* Run a single game tick
* Where most of the logic will be
*/
void tick(pet_t* pet)
{
    if (pet->hunger == 0)
    {
        pet->health--;
    }
    if (rand() % 2 == 0)
    {
        if (pet->hunger > 0)
        {
            pet->hunger--;
        }
    }
}

void game_loop()
{
    int gameticks = 0;
    bool is_running = true;
    pet_t pet = {
        .hunger = 10,
        .health = 5,
        .maxhealth = 5,
    };

    time_t t;
    srand((unsigned) time(&t));

    do
    {
        clear_terminal();
        fputs("Enter your pet's name (16 character limit): ", stdout);
    } while (malloc_str(pet.name, 16) != 0);

    do
    {
        gameticks++;
        render_menu(pet);

        int choice = 0;
        int err = 0;
        fputs("\nEnter your choice: ", stdout);
        scanf("%d", &choice);
        switch (choice)
        {
            /* Feeding your pet increases its food, if it's not at max */
            case 1:
                err = feed_pet(&pet);
                if (err != 0)
                {
                    printf("\n%s is not currently hungry.", pet.name);
                }
                else
                {
                    printf("\n%s is gobbling up the food.", pet.name);
                }
                break;
            /* Petting your pet heals them... for some reason */
            case 2:
                err = heal_pet(&pet);
                if (err != 0)
                {
                    printf("\n%s is feeling better than ever.", pet.name);
                }
                else
                {
                    printf("\n%s is feeling better now.", pet.name);
                }
                break;
            case 3:
                fputs("\nGoodbye.", stdout);
                is_running = false;
                break;
            default:
                fputs("\nInvalid choice", stdout);
        }

        tick(&pet);

        if (pet.health <= 0)
        {
            printf("\n%s is not feeling too well... Game over. :(", pet.name);
            is_running = false;
        }

        getchar();
        getchar();

    } while (is_running);
}
