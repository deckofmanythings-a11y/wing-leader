-- Wing Leader cloud saves.
-- Lives in the shared "raided-hex" Supabase project; everything is prefixed wl_.

create table if not exists public.wl_saves (
  user_id    uuid primary key references auth.users (id) on delete cascade,
  state      jsonb not null,
  version    text,
  updated_at timestamptz not null default now()
);

alter table public.wl_saves enable row level security;

create policy "wl_saves_select_own" on public.wl_saves
  for select using (auth.uid() = user_id);

create policy "wl_saves_insert_own" on public.wl_saves
  for insert with check (auth.uid() = user_id);

create policy "wl_saves_update_own" on public.wl_saves
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

create policy "wl_saves_delete_own" on public.wl_saves
  for delete using (auth.uid() = user_id);
