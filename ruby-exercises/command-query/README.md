# Command/Query Separation

## Queries

Sometimes we want to get information about something. Is it Wednesday? How many
people have signed up to attend the event? Which channel is your favorite?
Asking the question doesn't change anything. It's either Wednesday or it isn't,
and asking the question doesn't make it Thursday.

## Commands

Other times, we do something to the world, and something changes. We throw
something in the trash. Now the trash can has more stuff in it. We buy a drink.
Now we have less money.

## One or the Other

In many software systems we try to keep a clear separation between obtaining
data and changing things. When we're asking about something, we don't change
things, and when we change things, we don't get information back. If, when
we've told the system to change, we want to know whether or not anything
actually happened, or what the new situation is, we'll have to go ask.

These exercises focus on these two types of operations.

## Exercises

- [X] `leather_chair_spec.rb`]
- [X] `tire_spec.rb`]
- [X] `pills_spec.rb`]
- [X] `floor_spec.rb`]
- [X] `milk_bottle_spec.rb`]
- [X] `person_spec.rb`]
- [X] `door_spec.rb`]
- [X] `teeth_spec.rb`]
- [X] `music_spec.rb`]
- [X] `drops_spec.rb`]
- [X] `light_spec.rb`]
- [X] `baby_spec.rb`]
- [X] `kid_spec.rb`]
- [X] `beers_spec.rb`]
- [ ] `teenager_spec.rb`]
- [ ] `adult_spec.rb`]
- [ ] `roll_call_spec.rb`]
- [ ] `santa_spec.rb`]
- [ ] `dog_spec.rb`]
- [ ] `children_spec.rb`]
- [ ] `water_spec.rb`]
- [ ] `clock_spec.rb`]
- [ ] `appointments_spec.rb`]
- [ ] `yak_spec.rb`]
- [ ] `money_spec.rb`]
- [ ] `cupcake_spec.rb`]
- [ ] `student_spec.rb`]
- [ ] `catalogue_spec.rb`]
- [ ] `wallet_spec.rb`]
- [ ] `clearance_spec.rb`]

## Go make up more

... and submit pull requests
