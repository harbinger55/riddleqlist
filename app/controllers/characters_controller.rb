class CharactersController < ApplicationController
  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @characters }
    end
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    @character = Character.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @character }
    end
  end

  # GET /characters/new
  # GET /characters/new.json
  def new
    @character = Character.new
	@specs = Spec.order(:name)
	@talents = Talent.order(:name)
	@races = Race.order(:name)
	@guilds = Guild.order(:name)
  @roles = Role.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @character }
    end
  end

  # GET /characters/1/edit
  def edit
    @character = Character.find(params[:id])
	@specs = Spec.order(:name)
	@talents = Talent.order(:name)
	@races = Race.order(:name)
  @roles = Role.all
	@guilds = Guild.order(:name)
  end

def import_from_battlenet
    bnet = Battlenet.new :us 
    puts "#{@character.name.capitalize}"
    toon = bnet.character 'Moonrunner', "#{@character.name.capitalize}", :fields => "guild,talents,class,race"
    toon_spec = Spec.find_by_id_bnet(toon['class'])
    @character.spec_id = toon_spec.id
    toon_race = Race.find_by_id_bnet(toon['race'])
    @character.race_id = toon_race.id
    toon_guild = Guild.find_or_create_by_name("#{toon['guild']['name']}")
    @character.guild_id = toon_guild.id
    @character.level = "#{toon['level']}"
    puts "CLASS ====== #{toon_spec.name}"
    puts "RACE ======= #{toon_race.name}"
    puts "LEVEL ====== #{toon['level']}"
    puts "GUILD ====== #{toon['guild']['name']}"
    puts "TALENTS ==== #{toon['talents']}"
    toon['talents'].each_with_index do |t,i|
      if i == 0
        puts "PRIMARY TALENT ======= #{t['spec']['name']}"
        toon_talent = Talent.find_by_name("#{t['spec']['name']}")
        @character.primary_talent_id = toon_talent.id
      elsif i == 1
        puts "SECONDARY TALENT ======= #{t['spec']['name']}}"
        toon_talent = Talent.find_by_name("#{t['spec']['name']}")
        @character.secondary_talent_id = toon_talent.id
      end
    end
end
  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(params[:character])
    @specs = Spec.order(:name)
    @talents = Talent.order(:name)
    @races = Race.order(:name)
    @guilds = Guild.order(:name)
    @roles = Role.all

    respond_to do |format|
      if params[:import]
        import_from_battlenet
        format.html { render action: "new" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      else
        if @character.save
            format.html { redirect_to @character, notice: 'Character was successfully created.' }
          format.json { render json: @character, status: :created, location: @character }
        else
          format.html { render action: "new" }
          format.json { render json: @character.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /characters/1
  # PUT /characters/1.json
  def update
    @character = Character.find(params[:id])
    @specs = Spec.order(:name)
    @talents = Talent.order(:name)
    @races = Race.order(:name)
    @roles = Role.all
    @guilds = Guild.order(:name)

    respond_to do |format|
      if params[:import]
        import_from_battlenet
        format.html { render action: "edit" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      else
        if @character.update_attributes(params[:character])
          format.html { redirect_to @character, notice: 'Character was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @character.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    respond_to do |format|
      format.html { redirect_to characters_url }
      format.json { head :no_content }
    end
  end
end
